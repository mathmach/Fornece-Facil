package classes;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.sql.*;
import java.util.InputMismatchException;
import java.util.Random;
import java.util.UUID;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.*;
import org.apache.commons.codec.binary.Hex;
import org.json.JSONException;
import org.json.JSONObject;

public final class User extends Password {

    private final Connection _db;
    private final String _key;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public User(Connection db) {
        super();
        _db = db;
        _key = pack("fc4d57ed55a78de1a7b31e711866ef5a2848442349f52cd470008f6d30d47282");
    }

    public String pack(String hex) {
        String input = hex.length() % 2 == 0 ? hex : hex + "0";
        StringBuilder output = new StringBuilder();
        for (int i = 0; i < input.length(); i += 2) {
            String str = input.substring(i, i + 2);
            output.append((char) Integer.parseInt(str, 16));
        }
        return output.toString();
    }

    public String shortUUID() {
        UUID uuid = UUID.randomUUID();
        long l = ByteBuffer.wrap(uuid.toString().getBytes()).getLong();
        return Long.toString(l, Character.MAX_RADIX);
    }

    private ResultSet getUserHash(String username) throws SQLException {
        pstmt = this._db.prepareStatement("SELECT user_pass, user_name, user_cnpj FROM users WHERE user_name = ? AND user_active='Yes' ");
        pstmt.setString(1, username);
        rs = pstmt.executeQuery();
        if (!rs.next()) {
            throw new SQLException("User not found");
        }
        return rs;
    }

    public boolean login(String username, String password, HttpServletRequest request, HttpServletResponse response) throws SQLException, NoSuchMethodException, Exception {

        ResultSet row = this.getUserHash(username);
        HttpSession session = request.getSession();

        if (this.password_verify(password, row.getString("user_pass")) == true) {
            if (request.getParameter("remember") != null) {
                this.tokenGenerate(username, response);
            }
            session.setAttribute("loggedin", true);
            session.setAttribute("user_name", row.getString("user_name"));
            session.setAttribute("user_cnpj", row.getString("user_cnpj"));
            return true;
        }
        return false;
    }

    private void tokenGenerate(String username, HttpServletResponse response) throws SQLException {
        String token = this.GenerateRandomToken();
        this.storeTokenForUser(username, token);
        String cookie = username + ":" + token;
        String mac = hash_hmac("HmacSHA256", cookie, this._key);
        cookie += ':' + mac;
        this.setCookie("remember_id", cookie, 60 * 60 * 24, response);
    }

    public static String hash_hmac(String algo, String value, String key) {
        try {
            // Get an hmac_sha1 key from the raw key bytes
            byte[] keyBytes = key.getBytes();
            SecretKeySpec signingKey = new SecretKeySpec(keyBytes, algo);

            // Get an hmac_sha1 Mac instance and initialize with the signing key
            Mac mac = Mac.getInstance(algo);
            mac.init(signingKey);

            // Compute the hmac on input data bytes
            byte[] rawHmac = mac.doFinal(value.getBytes());

            // Convert raw bytes to Hex
            byte[] hexBytes = new Hex().encode(rawHmac);

            //  Covert array of Hex bytes to a String
            return new String(hexBytes, "UTF-8");
        } catch (UnsupportedEncodingException | IllegalStateException | InvalidKeyException | NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public void setCookie(String cookieName, String cookieValue, Integer time, HttpServletResponse response) {
        Cookie cookie = new Cookie(cookieName, cookieValue);
        cookie.setPath("/");
        cookie.setMaxAge(time);
        response.addCookie(cookie);
    }

    private void storeTokenForUser(String username, String token) throws SQLException {
        pstmt = this._db.prepareStatement("UPDATE users SET authToken = ? WHERE user_name = ?");
        pstmt.setString(1, token);
        pstmt.setString(2, username);
        pstmt.executeUpdate();
    }

    private String fetchTokenByUserName(String username) throws SQLException {
        pstmt = this._db.prepareStatement("SELECT authToken FROM users WHERE user_name = ?");
        pstmt.setString(1, username);
        rs = pstmt.executeQuery();
        if (!rs.next()) {
            throw new SQLException("Token not found");
        }
        return rs.getString("authToken");
    }

    private synchronized String GenerateRandomToken() {
        char[] VALID_CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456879".toCharArray();
        SecureRandom srand = new SecureRandom();
        Random rand = new Random();
        char[] buff = new char[32];

        for (int i = 0; i < 32; ++i) {
            // reseed rand once you've used up all available entropy bits
            if ((i % 10) == 0) {
                rand.setSeed(srand.nextLong()); // 64 bits of random!
            }
            buff[i] = VALID_CHARACTERS[rand.nextInt(VALID_CHARACTERS.length)];
        }
        return new String(buff);
    }

    public boolean rememberMe(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        String cookie = "";
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie i : cookies) {
                if (i.getName().equals("remember_id")) {
                    cookie = i.getValue();
                    break;
                }
            }
        }
        if (!cookie.isEmpty()) {
            String info[] = cookie.split(":"); //0 = user; 1 = token; 2 = mac;
            if (!this.hash_hmac("HmacSHA256", info[0] + ":" + info[1], this._key).equals(info[2])) {
                return false;
            }
            String usertoken = this.fetchTokenByUserName(info[0]);
            if (usertoken.equals(info[1])) {
                HttpSession session = request.getSession();
                session.setAttribute("loggedin", true);
                session.setAttribute("user_name", info[0]);
                return true;
            }
        }
        return false;
    }

    public void logout(HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("remember_id")) {
                    this.setCookie("remember_id", null, 0, response);
                    break;
                }
            }
        }
        request.getSession().invalidate();
    }

    public boolean IsLoggedIn(HttpServletRequest request, HttpServletResponse response) throws SQLException {
        HttpSession session = request.getSession();
        return session.getAttribute("loggedin") != null && session.getAttribute("loggedin").equals(true) || this.rememberMe(request, response);
    }

    public boolean IsValidCNPJ(String cnpj) {
        // considera-se erro CNPJ's formados por uma sequencia de numeros iguais
        if (cnpj.equals("00000000000000") || cnpj.equals("11111111111111")
                || cnpj.equals("22222222222222") || cnpj.equals("33333333333333")
                || cnpj.equals("44444444444444") || cnpj.equals("55555555555555")
                || cnpj.equals("66666666666666") || cnpj.equals("77777777777777")
                || cnpj.equals("88888888888888") || cnpj.equals("99999999999999")
                || (cnpj.length() != 14)) {
            return (false);
        }

        char dig13, dig14;
        int sm, i, r, num, peso;

        // "try" - protege o código para eventuais erros de conversao de tipo (int)
        try {
            // Calculo do 1o. Digito Verificador
            sm = 0;
            peso = 2;
            for (i = 11; i >= 0; i--) {
                // converte o i-ésimo caractere do CNPJ em um número:
                // por exemplo, transforma o caractere '0' no inteiro 0
                // (48 eh a posição de '0' na tabela ASCII)
                num = (int) (cnpj.charAt(i) - 48);
                sm = sm + (num * peso);
                peso = peso + 1;
                if (peso == 10) {
                    peso = 2;
                }
            }

            r = sm % 11;
            if ((r == 0) || (r == 1)) {
                dig13 = '0';
            } else {
                dig13 = (char) ((11 - r) + 48);
            }

            // Calculo do 2o. Digito Verificador
            sm = 0;
            peso = 2;
            for (i = 12; i >= 0; i--) {
                num = (int) (cnpj.charAt(i) - 48);
                sm = sm + (num * peso);
                peso = peso + 1;
                if (peso == 10) {
                    peso = 2;
                }
            }

            r = sm % 11;
            if ((r == 0) || (r == 1)) {
                dig14 = '0';
            } else {
                dig14 = (char) ((11 - r) + 48);
            }

            // Verifica se os dígitos calculados conferem com os dígitos informados.
            if ((dig13 == cnpj.charAt(12)) && (dig14 == cnpj.charAt(13))) {
                return (true);
            } else {
                return (false);
            }
        } catch (InputMismatchException erro) {
            return (false);
        }

    }

    // HTTP GET request
    public JSONObject sendGet(String cnpj) throws Exception, IOException, JSONException {

        String url = "https://www.receitaws.com.br/v1/cnpj/" + cnpj;

        URL obj = new URL(url);
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();

        // optional default is GET
        con.setRequestMethod("GET");

        //add request header
        //con.setRequestProperty("User-Agent", USER_AGENT);
        int responseCode = con.getResponseCode();
        if (responseCode != 200) {
            throw new Exception(Integer.toString(responseCode));
        }

        BufferedReader rd = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));

        try {
            String jsonText = readAll(rd);
            return new JSONObject(jsonText);
        } finally {
            rd.close();
        }
    }

    private static String readAll(Reader rd) throws IOException {
        StringBuilder sb = new StringBuilder();
        int cp;
        while ((cp = rd.read()) != -1) {
            sb.append((char) cp);
        }
        return sb.toString();
    }
}
