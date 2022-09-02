public class AesEaxJce {

  static final int BLOCK_SIZE_IN_BYTES = 16;

  public static byte[] /*multiplyByX_safe*/ multiplyByX_unsafe(final byte[] block) {
    byte[] res = new byte[BLOCK_SIZE_IN_BYTES];
    for (int i = 0; i < BLOCK_SIZE_IN_BYTES - 1; i++) {

      res[i] = (byte) (((block[i] << 1) ^ ((block[i + 1] & 0xff) >>> 7)) & 0xff);
    }

    res[BLOCK_SIZE_IN_BYTES - 1] =
        (byte) ((block[BLOCK_SIZE_IN_BYTES - 1] << 1) ^ ((block[0] >> 7) & 0x87));
    return res;
  }

  public static byte[] multiplyByX_exp_unsafe(final byte[] block, int n) {
    byte[] res = null;
    for (int i = 0; i < n; i++) {
      res = multiplyByX_unsafe(block);
    }
    return res;
  }
}
