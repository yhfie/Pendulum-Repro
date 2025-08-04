public class Credential {
    public static boolean stringEquals_original$Old(String s1, String s2) {
        if (s1 == s2)
            return true;

        if ((s1 == null) || (s2 == null))
            return false;

        boolean result = true;
        int l1 = s1.length();
        int l2 = s2.length();
        if (l1 != l2)
            result = false;

        int l = Math.min(l1, l2);
        for (int i = 0; i < l; ++i)
            result &= s1.charAt(i) == s2.charAt(i);

        return result;
    }

    public static boolean stringEquals_original(String s1, String s2) {
        boolean $1 = true;
        boolean result = true;
        if (s1 == s2) {
            result = true;
        } else {
            $1 = true;
        }
        if ((s1 == null) || (s2 == null)) {
            result = false;
        } else {
            $1 = false;
        }
        int l1 = s1.length();
        int l2 = s2.length();
        if (l1 != l2) {
            result = false;
        } else {
            $1 = false;
        }
        int l = Math.min(l1, l2);
        for (int i = 0; i < l; ++i) {
            result &= s1.charAt(i) == s2.charAt(i);
        }
        return result;
    }
}