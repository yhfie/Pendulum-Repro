/* adapted from https://github.com/google/tink/commit/89859790844186aa578bcea0323998d57f73290c */
public class AesEaxJce {

	static final int BLOCK_SIZE_IN_BYTES = 16;

	public static byte[] multiplyByX_unsafe(final byte[] block) {
		byte[] res = new byte[BLOCK_SIZE_IN_BYTES];
		for (int i = 0; i < BLOCK_SIZE_IN_BYTES - 1; i++) {
			// Shifts byte array by 1 bit (this is ugly because bytes in Java are signed)
			res[i] = (byte) (((block[i] << 1) ^ ((block[i + 1] & 0xff) >>> 7)) & 0xff);
		}
		// Shifts the least significant block by 1 bit and reduces the msb modulo the polynomial.
		res[BLOCK_SIZE_IN_BYTES - 1] = (byte) ((block[BLOCK_SIZE_IN_BYTES - 1] << 1) ^ ((block[0] & 0x80) == 0 ? 0 : 0x87));
		return res;
	}

	// public static byte[] multiplyByX_safe(final byte[] block) {
	// 	byte[] res = new byte[BLOCK_SIZE_IN_BYTES];
	// 	for (int i = 0; i < BLOCK_SIZE_IN_BYTES - 1; i++) {
	// 		// Shifts byte array by 1 bit (this is ugly because bytes in Java are signed)
	// 		res[i] = (byte) (((block[i] << 1) ^ ((block[i + 1] & 0xff) >>> 7)) & 0xff);
	// 	}
	// 	// Shifts the least significant block by 1 bit and reduces the msb modulo the polynomial.
	// 	res[BLOCK_SIZE_IN_BYTES - 1] = (byte) ((block[BLOCK_SIZE_IN_BYTES - 1] << 1) ^ ((block[0] >> 7) & 0x87));
	// 	return res;
	// }

	/* : multiply for a few times; otherwise, two clusters will be only one instruction apart */
	public static byte[] multiplyByX_exp_unsafe(final byte[] block, int n) {
		byte[] res = null;
		for (int i = 0; i < n; i++) {
			res = multiplyByX_unsafe(block);
		}
		return res;
	}

	// public static byte[] multiplyByX_exp_safe(final byte[] block, int n) {
	// 	byte[] res = null;
	// 	for (int i = 0; i < n; i++) {
	// 		res = multiplyByX_safe(block);
	// 	}
	// 	return res;
	// }
}