public class Login {


    public static boolean /*login_safe*/login_unsafe(byte[] real_password, byte[] guess, String username) {
        boolean unused;
        boolean matches = true;


        if (real_password == null) {
            return false;
        }

        for (int i = 0; i < guess.length; i++) {
            if (i < real_password.length) {
                if (guess[i] != real_password[i]) {
                    matches = false;
                } else {
                    unused = true;
                }
            } else {
                unused = false;
                unused = true;
                matches = false;
            }
        }

        return matches;
    }

    public static byte[] retrieve(String username) {
        byte[] pw = { 0xa, 0x3, 0xf, 0x1 };
        return pw;
    }
}
