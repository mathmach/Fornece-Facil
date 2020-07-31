<%@page import="classes.Mail"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="java.util.UUID"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.util.EmptyStackException"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%! List<String> errList = new ArrayList<>();%>
<%  if (!user.IsLoggedIn(request, response)) {
        out.print(session.getAttribute("user_name"));
        /*response.sendRedirect("index.jsp");
                return;*/
    } else {
        out.print(session.getAttribute("user_name"));
    }

    if (request.getParameter("btnSubmit") != null) {
        switch (request.getParameter("btnSubmit")) {
            case "Login":

                errList.clear();

                String username = request.getParameter("username");
                String password = request.getParameter("password");

                try {
                    if (user.login(username, password, request, response)) {
                        session.setAttribute("user_name", username);
                    } else {
                        errList.add("Usuário ou senha inválido ou sua conta não foi ativada.");
                    }
                } catch (Exception e) {
                    errList.add("Usuário ou senha inválido ou sua conta não foi ativada.");
                }
                break;
            case "Register":

                PreparedStatement pstmt;
                ResultSet rs;
                errList.clear();

                //very basic validation
                if (request.getParameter("username").length() < 3) {
                    errList.add("Nome de usuário é muito curto.");
                } else {
                    pstmt = db.prepareStatement("SELECT user_name FROM users WHERE user_name = ? ");
                    pstmt.setString(1, request.getParameter("username"));
                    rs = pstmt.executeQuery();
                    if (rs.next()) {
                        errList.add("Nome de usuário já está em uso.");
                    }
                }

                //email validation
                try {
                    String email = request.getParameter("email");
                    InternetAddress emailAddr = new InternetAddress(email);
                    emailAddr.validate();
                    Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
                    Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(email);
                    if (!matcher.find()) {
                        throw new EmptyStackException();
                    }

                    pstmt = db.prepareStatement("SELECT user_email FROM users WHERE user_email = ? ");
                    pstmt.setString(1, request.getParameter("email"));
                    rs = pstmt.executeQuery();
                    if (rs.next()) {
                        errList.add("Email já está em uso.");
                    }

                } catch (AddressException ex) {
                    errList.add("Use um endereço de email válido.");
                } catch (EmptyStackException e) {
                    errList.add("Use um endereço de email válido.");
                }

                if (!user.IsValidCNPJ(request.getParameter("cnpj"))) {
                    errList.add("CNPJ Inválido.");
                } else {
                    try {
                        JSONObject json = user.sendGet(request.getParameter("cnpj"));
                        String realName = (String) json.get("nome");
                        String phone = (String) json.get("telefone");
                        String company = (String) json.get("fantasia");
                        String zip = (String) json.get("cep");
                        String street = (String) json.get("logradouro");
                        String neighborhood = (String) json.get("bairro");
                        String number = (String) json.get("numero");
                        String city = (String) json.get("municipio");
                        String province = (String) json.get("uf");

                        pstmt = db.prepareStatement("SELECT company_cnpj FROM companies WHERE company_cnpj = ? ");
                        pstmt.setString(1, request.getParameter("cnpj"));
                        rs = pstmt.executeQuery();
                        if (!rs.next()) {
                            pstmt = db.prepareStatement("INSERT INTO companies (company_cnpj, company_phone, company_trading, company_name, company_address_province, company_address_city, company_address_street, company_address_neighborhood, company_address_number, company_address_zip) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                            pstmt.setString(1, request.getParameter("cnpj"));
                            pstmt.setString(2, "");
                            pstmt.setString(3, company);
                            pstmt.setString(4, realName);
                            pstmt.setString(5, province);
                            pstmt.setString(6, city);
                            pstmt.setString(7, street);
                            pstmt.setString(8, neighborhood);
                            pstmt.setString(9, number);
                            pstmt.setString(10, zip);
                            pstmt.executeUpdate();
                        } else {
                            errList.add("CNPJ já está em uso.");
                        }
                    } catch (Exception e) {
                        errList.add("Há algum erro com esse CNPJ, favor entrar em contato conosco.");
                    }
                }

                if (request.getParameter("password").length() < 3) {
                    errList.add("Senha é muito curta.");
                }

                if (request.getParameter("passwordConfirm").length() < 3) {
                    errList.add("Confirmação de senha é muito curta.");
                }

                if (!request.getParameter("password").equals(request.getParameter("passwordConfirm"))) {
                    errList.add("As senhas não correspondem.");
                }

                //if no errors have been created carry on
                if (errList.isEmpty()) {

                    //hash the password
                    String hashedpassword = user.password_hash(request.getParameter("password"));

                    //create the activasion code
                    MessageDigest md = MessageDigest.getInstance("MD5");
                    byte[] bytesOfMessage = UUID.randomUUID().toString().getBytes("UTF-8");
                    byte[] thedigest = md.digest(bytesOfMessage);
                    String activasion = thedigest.toString();

                    try {
                        //insert into database with a prepared statement                          
                        pstmt = db.prepareStatement("INSERT INTO users (user_cnpj, user_name, user_pass, user_email, user_is_provider, user_active) VALUES (?, ?, ?, ?, ?, ?)");
                        pstmt.setString(1, request.getParameter("cnpj"));
                        pstmt.setString(2, request.getParameter("username"));
                        pstmt.setString(3, hashedpassword);
                        pstmt.setString(4, request.getParameter("email"));
                        pstmt.setBoolean(5, request.getParameter("provider") != null ? true : false);
                        pstmt.setString(6, activasion);
                        pstmt.executeUpdate();

                        try {
                            Mail mail = new Mail();

                            mail.sendMail("Teste", request.getParameter("email"), "Confirmação de registro", "<p>Seu cadastro foi feito com sucesso.</p><p> Para ativar sua conta, por favor clique neste link: <a href ='http://localhost:8084/FAITEC/pages/activate.jsp?x=" + request.getParameter("cnpj") + "&y=" + activasion + "'>localhost:8084/FAITEC/pages/activate.php?x=" + request.getParameter("cnpj") + "&y=" + activasion + "</a></p><p> Nossa equipe agradece seu interesse em se juntar à nossa plataforma.</p>");

                            //redirect to index page
                            session.setAttribute("success", true);
                        } catch (Exception e) {
                            pstmt = db.prepareStatement("DELETE FROM users WHERE user_cnpj = ?");
                            pstmt.setString(1, request.getParameter("cnpj"));
                            pstmt.executeUpdate();
                            pstmt = db.prepareStatement("DELETE FROM companies WHERE company_cnpj = ?");
                            pstmt.setString(1, request.getParameter("cnpj"));
                            pstmt.executeUpdate();
                            errList.add("Não foi possível enviar o email de confirmação, registre-se novamente");
                        }
                        //else catch the exception and show the error.
                    } catch (Exception e) {
                        errList.add("Erro: " + e.toString());
                    }
                }
                break;
        }
    }
%>