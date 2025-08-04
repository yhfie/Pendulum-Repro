public class User {
    public static boolean passwordsEqual_unsafe$Old(String a, String b) {
        boolean equal = true;
        boolean shmequal = true;
        int aLen = a.length();
        int bLen = b.length();
        if (aLen != bLen) {
            equal = false;
        }
        int min = Math.min(aLen, bLen);
        for (int i = 0; i < min; i++) {
            if (a.charAt(i) != b.charAt(i)) {
                return false;
            } else {
                shmequal = true;
            }
        }
        return equal;
    }

    public static boolean passwordsEqual_unsafe(String a, String b) {
        boolean $2 = true;
        boolean $1 = true;
        boolean equal = true;
        boolean shmequal = true;
        int aLen = a.length();
        int bLen = b.length();
        if (aLen != bLen) {
            equal = false;
        } else {
            $1 = false;
        }
        int min = Math.min(aLen, bLen);
        for (int i = 0; i < min; i++) {
            if (a.charAt(i) != b.charAt(i)) {
                $2 = true;
                equal = false;
            } else {
                $1 = false;
                shmequal = true;
            }
        }
        return equal;
    }
}