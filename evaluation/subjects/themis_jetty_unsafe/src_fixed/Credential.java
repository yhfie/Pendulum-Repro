import pendulum.safe.Safe;

import java.io.Serializable;

public class Credential {

    // public static boolean stringEquals_safe(String s1, String s2) {
    //     boolean result = true;
    //     int l1 = s1.length();
    //     int l2 = s2.length();
    //     if (l1 != l2)
    //         result = false;
    //     int n = (l1 < l2) ? l1 : l2;
    //     for (int i = 0; i < n; i++)
    //         result &= s1.charAt(i) == s2.charAt(i);
    //     return result;
    // }

    public static boolean stringEquals_original(String s1, String s2) {
        boolean _result = false;
        boolean _early = false;
        if (s1 == s2) {
            return true;
        }
        int n = s1.length();
        boolean _b622 = Safe.eq(n, s2.length());
        char v1[] = s1.toCharArray();
        
        char v2[] = s2.toCharArray();
        
        int i = 0;
        
        while (n-- != 0) {
            boolean _b800 = Safe.neq(v1[i], v2[i]);
            
            _result = Safe.cond(_b622, Safe.cond(_b800, Safe.cond(_early, _result, false), _result), _result);
            _early = Safe.cond(_b622, Safe.cond(_b800, true, _early), _early);
                
            i++;
        }
        {
        _result = Safe.cond(_b622, Safe.cond(_early, _result, Safe.cond(_early, _result, true)), _result);
        _early = Safe.cond(_b622, true, _early);
        }

        return Safe.cond(_early, _result, Safe.cond(_early, _result, false));
    }

}
