public abstract class UsernamePasswordLoginModule {
    protected static boolean validatePassword_unsafe$Old(String inputPassword, String expectedPassword) {
        if ((inputPassword == null) || (expectedPassword == null))
            return false;

        boolean valid = false;
        valid = equals(inputPassword, expectedPassword);
        return valid;
    }

    protected static boolean validatePassword_unsafe(String inputPassword, String expectedPassword) {
        boolean $1 = false;
        boolean valid = false;
        if ((inputPassword == null) || (expectedPassword == null)) {
            valid = false;
        } else {
            $1 = false;
        }
        valid = equals(inputPassword, expectedPassword);
        return valid;
    }

    public static boolean equals(String a, String b) {
        if (a == b)
            return true;

        int n = a.length();
        if (n == b.length()) {
            char[] v1 = a.toCharArray();
            char[] v2 = b.toCharArray();
            int i = 0;
            int j = 0;
            while ((n--) != 0) {
                if (v1[i++] != v2[j++])
                    return false;

            } 
            return true;
        }
        return false;
    }
}