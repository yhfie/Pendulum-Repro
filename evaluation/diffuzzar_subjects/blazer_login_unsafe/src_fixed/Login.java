public class Login {
    public static boolean login_unsafe$Old(byte[] real_password, byte[] guess, String username) {
        if (real_password == null) {
            return false;
        }
        for (int i = 0; i < guess.length; i++) {
            if (i < real_password.length) {
                if (guess[i] != real_password[i]) {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    public static boolean login_unsafe(byte[] real_password, byte[] guess, String username) {
        boolean $2 = true;
        boolean $1 = true;
        if (real_password == null) {
            $1 = false;
        } else {
            $2 = false;
        }
        for (int i = 0; i < guess.length; i++) {
            if ((real_password != null) && (i < real_password.length)) {
                $2 = false;
                if (((i < guess.length) && ((real_password != null) && (i < real_password.length))) && (guess[i] != real_password[i])) {
                    $1 = false;
                } else {
                    $2 = false;
                }
            } else {
                $1 = false;
            }
        }
        return $1;
    }

    public static byte[] retrieve(String username) {
        byte[] pw = new byte[]{ 0xa, 0x3, 0xf, 0x1 };
        return pw;
    }
}