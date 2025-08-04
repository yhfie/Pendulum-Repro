public class Credential {
    public static boolean stringEquals_original$Old(String known, String unknown) {
        if (known == unknown)
            return true;

        if ((known == null) || (unknown == null))
            return false;

        boolean result = true;
        int l1 = known.length();
        int l2 = unknown.length();
        for (int i = 0; i < l2; ++i)
            result &= known.charAt(i % l1) == unknown.charAt(i);

        return result && (l1 == l2);
    }

    public static boolean stringEquals_original(String known, String unknown) {
        boolean $2;
        boolean $1;
        if (known == unknown) {
            $1 = true;
        } else {
            $2 = true;
        }
        if ((known == null) || (unknown == null)) {
            $1 = false;
        } else {
            $2 = false;
        }
        boolean result = true;
        int l1 = known.length();
        int l2 = unknown.length();
        for (int i = 0; i < l2; ++i) {
            result &= known.charAt(i % l1) == unknown.charAt(i);
        }
        $1 = result && (l1 == l2);
        return $1;
    }
}