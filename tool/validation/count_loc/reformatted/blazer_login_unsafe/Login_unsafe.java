public class Login {

  public static boolean login_unsafe(byte[] real_password, byte[] guess, String username) {

    if (real_password == null) {
      return false;
    }

    for (int i = 0; i < guess.length; i++) {
      if (i < real_password.length) {
        if (guess[i] != real_password[i]) {
          return false;
        }
      } else {
        return false;
      }
    }

    return true;
  }

  public static byte[] retrieve(String username) {
    byte[] pw = {0xa, 0x3, 0xf, 0x1};
    return pw;
  }
}
