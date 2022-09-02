import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import edu.cmu.sv.kelinci.Mem;

public class Driver {
	public static void main(String[] args) {
		int n = 5;
		byte[] secretValue1 = null;
		byte[] secretValue2 = null;

		Mem.clear();
		AesEaxJce.multiplyByX_exp_unsafe(secretValue1, n);
		Mem.clear();
		AesEaxJce.multiplyByX_exp_unsafe(secretValue2, n);
	}
}

