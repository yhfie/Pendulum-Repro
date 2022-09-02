package fr.xephi.authme.security.crypts;

import fr.xephi.authme.security.crypts.description.HasSalt;
import fr.xephi.authme.security.crypts.description.Recommendation;
import fr.xephi.authme.security.crypts.description.SaltType;
import fr.xephi.authme.security.crypts.description.Usage;
import pendulum.safe.Safe;

@Recommendation(Usage.DO_NOT_USE)
@HasSalt(SaltType.NONE)
public abstract class UnsaltedMethod implements EncryptionMethod {

  public boolean safeMode = false;

  public abstract String computeHash(String password);

  @Override
  public HashedPassword computeHash(String password, String name) {
    return new HashedPassword(computeHash(password));
  }

  @Override
  public String computeHash(String password, String salt, String name) {
    return computeHash(password);
  }

  @Override
  public boolean comparePassword(String password, HashedPassword hashedPassword, String name) {

    return isEqual_unsafe(hashedPassword.getHash(), computeHash(password));
  }

  @Override
  public String generateSalt() {
    return null;
  }

  @Override
  public boolean hasSeparateSalt() {
    return false;
  }

  public boolean isEqual_unsafe(String thisObject, Object otherObject) {
    boolean _result = false;
    boolean _early = false;
    if (thisObject == otherObject) {
      return true;
    }
    if (otherObject instanceof String) {
      String anotherString = (String) otherObject;
      int n = thisObject.length();
      if (n == anotherString.length()) {
        char v1[] = thisObject.toCharArray();
        char v2[] = anotherString.toCharArray();
        int i = 0;
        while (n-- != 0) {
          boolean _b2135 = Safe.neq(v1[i], v2[i]);
          _result = Safe.cond(_b2135, Safe.cond(_early, _result, false), _result);
          _early = Safe.cond(_b2135, true, _early);

          i++;
        }
        return Safe.cond(_early, _result, true);
      }
    }
    return Safe.cond(_early, _result, false);
  }

  public static boolean MessageDigestisEqual(byte[] digesta, byte[] digestb) {
    if (digesta == digestb) return true;
    if (digesta == null || digestb == null) {
      return false;
    }
    if (digesta.length != digestb.length) {
      return false;
    }

    int result = 0;

    for (int i = 0; i < digesta.length; i++) {
      result |= digesta[i] ^ digestb[i];
    }
    return result == 0;
  }
}
