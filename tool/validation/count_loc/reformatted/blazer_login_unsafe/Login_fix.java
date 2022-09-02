import pendulum.safe.Safe;

public class Login {

  public static boolean login_unsafe(byte[] real_password, byte[] guess, String username) {

    boolean _result = false;
    boolean _early = false;
    if (real_password == null) {
      return false;
    }

    for (int i = 0; i < guess.length; i++) {
      if (i < real_password.length) {

        {
          boolean _b428 = Safe.neq(guess[i], real_password[i]);
          {
            _result = Safe.cond(_b428, Safe.cond(_early, _result, false), _result);
            _early = Safe.cond(_b428, true, _early);
          }
        }
      } else {
        return Safe.cond(_early, _result, false);
      }
    }

    return Safe.cond(_early, _result, true);
  }

  public static byte[] retrieve(String username) {
    byte[] pw = {0xa, 0x3, 0xf, 0x1};
    return pw;
  }
}
