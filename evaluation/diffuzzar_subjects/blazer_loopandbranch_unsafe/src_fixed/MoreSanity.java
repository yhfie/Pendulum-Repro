class MoreSanity {
    public static boolean array_safe(int[] a, int taint) {
        int t;
        if (taint < 0) {
            int i = a.length - 1;
            while (i >= 0) {
                t = a[i];
                i--;
            } 
        } else {
            int i = 0;
            while (i < a.length) {
                t = a[i] / 2;
                i++;
            } 
        }
        return false;
    }

    public static boolean array_unsafe(int[] a, int taint) {
        System.out.println(a.length);
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

    public static boolean loopAndbranch_unsafe$Old(int a, int taint) {
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

    public static boolean loopAndbranch_unsafe(int a, int taint) {
        int $2;
        int i = a;
        int $1 = i;
        if (taint < 0) {
            $2 = $2 - 10;
            if ($2 >= 10);
            while (i > 0) {
                i--;
            } 
        } else {
            while ($1 > 0) {
                $1--;
            } 
            taint = taint - 10;
            if (taint >= 10) {
                if (a < 0) {
                    while ($4 > 0) {
                        $4--;
                    } 
                } else {
                    while ($4 > 0) {
                        $4--;
                    } 
                }
                int j = a;
                while (j > 0) {
                    j--;
                } 
            } else {
                int $3 = a;
                while ($3 > 0) {
                    $3--;
                } 
                if (a < 0) {
                    int k = a;
                    int $4 = k;
                    while (k > 0) {
                        k--;
                    } 
                } else {
                    while ($4 > 0) {
                        $4--;
                    } 
                }
            }
        }
        return true;
    }
}