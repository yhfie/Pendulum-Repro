import pendulum.safe.Safe;

import java.io.Serializable;

public class Credential {

    public static boolean stringEquals_original(String s1, String s2)
    {
      if (s1 == s2)
        return true;
      if (s1 == null || s2 == null)
        return false;
      boolean result = true;
      int l1 = s1.length();
      int l2 = s2.length();
      boolean _b323 = Safe.neq(l1, l2);
      result = Safe.cond(_b323, false, result);

      int l = Math.min(l1, l2);
      int _ub444 = 16;
      boolean _break399 = false;
      for (int i = 0; --_ub444 > 0; ++i)
        {
        boolean _guard444 = Safe.not(Safe.lt(i,l));
        
        _break399 = Safe.cond(_guard444, true, _break399);

        result = Safe.cond(_break399, result, (result) & ((Safe.eq(s1.charAt((i % l)), s2.charAt((i % l))))));
      }
      return result;
    }
}
