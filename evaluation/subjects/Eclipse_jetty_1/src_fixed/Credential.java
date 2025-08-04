import sg.edu.nus.comp.tsunami.safe.Safe;

import java.io.Serializable;

public class Credential {

    public static boolean stringEquals_original(String s1, String s2) {
      boolean _result = false;
      boolean _early = false;
      int n1 = s1.length();
      int n2 = s2.length();
      for(int i = 0; i < n1 && i < n2; i++)
          
      {
          boolean _b239 = Safe.neq(s1.charAt(i), s2.charAt(i));
          _result = Safe.cond(_b239, Safe.cond(_early, _result, false), _result);
          _early = Safe.cond(_b239, true, _early);

      }

      return Safe.cond(_early, _result, n1 == n2);
  }
}
