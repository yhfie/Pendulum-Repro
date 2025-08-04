import sg.edu.nus.comp.tsunami.AbstractQDriver;

import org.jasypt.digest.StandardByteDigester;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import edu.cmu.sv.kelinci.Mem;

/* Rhf: subject comes from
https://github.com/jasypt/jasypt/commit/de86f6f6083dedbd493a68e5f888112c0469dac3#diff-ed511ae4cbd288c8473bb9a18ae7e582f792c86988aec4b4025116c500ec1264L1067 */

public class QDriver extends AbstractQDriver {
	static int MESSAGE_LENGTH = 16;

	public static void main(String[] args) {
		byte[] publicValue = null;
		byte[] secretValue1 = null;
		byte[] secretValue2 = null;

		StandardByteDigester digester = new StandardByteDigester();
		digester.setSaltSizeBytes(0);

		Mem.clear();
		digester.matches_unsafe(publicValue, secretValue1);
		Mem.clear();
		digester.matches_unsafe(publicValue, secretValue2);
	}
}

