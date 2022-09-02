import pendulum.safe.Safe;

public class User {

  public static boolean passwordsEqual_unsafe(String a, String b) {
    boolean _result = false;
    boolean _early = false;
    boolean equal = true;
    boolean shmequal = true;
    int aLen = a.length();
    int bLen = b.length();
    if (aLen != bLen) {
      equal = false;
    }
    int min = Math.min(aLen, bLen);
    for (int i = 0; i < min; i++) {

      {
        boolean _b1027 = Safe.neq(a.charAt(i), b.charAt(i));
        {
          _result = Safe.cond(_b1027, Safe.cond(_early, _result, false), _result);
          _early = Safe.cond(_b1027, true, _early);
        }
        shmequal = Safe.cond(_b1027, shmequal, true);
      }
    }

    return Safe.cond(_early, _result, equal);
  }
}
