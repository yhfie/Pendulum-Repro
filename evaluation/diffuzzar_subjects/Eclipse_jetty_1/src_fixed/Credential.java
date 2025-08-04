public class Credential {
    public static boolean stringEquals_original$Old(String s1, String s2) {
        int n1 = s1.length();
        int n2 = s2.length();
        for (int i = 0; (i < n1) && (i < n2); i++)
            if (s1.charAt(i) != s2.charAt(i))
                return false;


        return n1 == n2;
    }

    public static boolean stringEquals_original(String s1, String s2) {
        boolean $2;
        boolean $1;
        int n1 = s1.length();
        int n2 = s2.length();
        for (int i = 0; (i < n1) && (i < n2); i++) {
            if (s1.charAt(i) != s2.charAt(i)) {
                $1 = false;
            } else {
                $2 = false;
            }
        }
        $1 = n1 == n2;
        return $1;
    }
}