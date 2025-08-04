import sg.edu.nus.comp.tsunami.AbstractQDriver;

import org.apache.shiro.authc.credential.DefaultPasswordService;
import org.apache.shiro.crypto.hash.Hash;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import edu.cmu.sv.kelinci.Mem;

/* Rhf: subject comes from
https://github.com/apache/shiro/commit/d7214d8b9cee3e0386ddbcd7f2afeb8112057af2 */

public class QDriver extends AbstractQDriver {
	static int PLAIN_LENGTH = 16;


	public static void main(String[] args) {
		Object publicValue = null;
		Hash secret1 = null;
		Hash secret2 = null;


		Mem.clear();
		DefaultPasswordService service = new DefaultPasswordService();
		service.passwordsMatch_unsafe(publicValue, secret1);
		Mem.clear();
		DefaultPasswordService service2 = new DefaultPasswordService();
		service2.passwordsMatch_unsafe(publicValue, secret2);
	}
}
