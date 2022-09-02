import org.apache.ws.security.WSSecurityException;
import org.apache.wss4j.binding.wss10.PasswordString;
import pendulum.safe.Safe;

public class SimplifiedUsernameTokenValidatorImpl {

  public static boolean unsafe_String_equals(String s1, Object s2) {
    boolean _result = false;
    boolean _early = false;
    if (s1 == s2) {
      return true;
    }
    if (s2 instanceof String) {
      String anotherString = (String) s2;
      int n = s1.length();
      if (n == anotherString.length()) {
        char v1[] = s1.toCharArray();
        char v2[] = anotherString.toCharArray();
        int i = 0;
        while (n-- != 0) {
          boolean _b1443 = Safe.neq(v1[i], v2[i]);
          _result = Safe.cond(_b1443, Safe.cond(_early, _result, false), _result);
          _early = Safe.cond(_b1443, true, _early);

          i++;
        }
        return Safe.cond(_early, _result, true);
      }
    }
    return Safe.cond(_early, _result, false);
  }

  public static void verifyPlaintextPassword(PasswordString passwordType, String dBPassword)
      throws WSSecurityException {

    if (!unsafe_String_equals(passwordType.getValue(), dBPassword)) {
      throw new WSSecurityException(WSSecurityException.FAILED_AUTHENTICATION);
    }
    passwordType.setValue(dBPassword);
  }
}
