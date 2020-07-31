package classes;

import java.security.SecureRandom;
import java.util.Random;

public abstract class Password {

    private static final Random RANDOM = new SecureRandom();
    private static final int ITERATIONS = 10000;
    private static final int KEY_LENGTH = 256;

    public Password() {
    }

    public String password_hash(String password) throws NoSuchMethodException, Exception {

        String ret = BCrypt.hashpw(password, BCrypt.gensalt());

        if (!(ret instanceof String) || ret.length() <= 13) {
            return null;
        }

        return ret;
    }

    protected boolean password_verify(String password, String hash) throws NoSuchMethodException {
        String ret = BCrypt.hashpw(password, hash);

        if (!(ret instanceof String) || ret.length() != hash.length() || ret.length() <= 13) {
            return false;
        }

        int status = 0;
        for (int i = 0; i < ret.length(); i++) {
            status |= ((int) ret.charAt(i) ^ (int) hash.charAt(i));
        }

        return status == 0;
    }
}
