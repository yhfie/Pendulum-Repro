import java.security.MessageDigestSpi;

public abstract class MessageDigest extends MessageDigestSpi {

  public static boolean isEqual_unsafe(byte digesta[], byte digestb[]) {
    if (digesta.length != digestb.length) return false;

    for (int i = 0; i < digesta.length; i++) {
      if (digesta[i] != digestb[i]) {
        return false;
      }
    }
    return true;
  }
}
