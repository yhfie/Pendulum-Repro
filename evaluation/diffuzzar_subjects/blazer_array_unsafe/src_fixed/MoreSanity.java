class MoreSanity {
    public static boolean array_unsafe$Old(int[] a, int taint) {
        int t;
        if (taint < 0) {
            int i = a.length - 1;
            while (i >= 0) {
                t = a[i];
                i--;
            } 
        } else {
            int i = 0;
            t = a[i] / 2;
            i = a.length;
        }
        return false;
    }

    public static boolean array_unsafe(int[] a, int taint) {
        int $2;
        int t;
        if (taint < 0) {
            int $3 = 0;
            $2 = a[$3] / 2;
            $3 = a.length;
            int i = a.length - 1;
            while (i >= 0) {
                t = a[i];
                i--;
            } 
        } else {
            int $1 = a.length - 1;
            while ($1 >= 0) {
                $2 = a[$1];
                $1--;
            } 
            int i = 0;
            t = a[i] / 2;
            i = a.length;
        }
        return false;
    }

    public static boolean loopAndbranch_safe(int a, int taint) {
        int i = a;
        if (taint < 0) {
            while (i > 0) {
                i--;
            } 
        } else {
            taint = taint + 10;
            if (taint >= 10) {
                int j = a;
                while (j > 0) {
                    j--;
                } 
            } else if (a < 0) {
                int k = a;
                while (k > 0)
                    k--;

            }
        }
        return true;
    }

    public static boolean loopAndbranch_unsafe(int a, int taint) {
        int i = a;
        if (taint < 0) {
            while (i > 0) {
                i--;
            } 
        } else {
            taint = taint - 10;
            if (taint >= 10) {
                int j = a;
                while (j > 0) {
                    j--;
                } 
            } else if (a < 0) {
                int k = a;
                while (k > 0)
                    k--;

            }
        }
        return true;
    }
}