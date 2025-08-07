import pendulum.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import org.apache.ftpserver.util.StringUtils;

public class QDriver extends AbstractQDriver {
	public static final int MAX_USERNAME_LENGTH = 16; // characters

	public static final boolean SAFE_MODE;

	static {
		SAFE_MODE = false;
		StringUtils.safeMode = SAFE_MODE;
	}

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String[] secrets = new String[K];
		/* Read secrets. */
		for (int i = 0; i < secrets.length; i++) {

			/* Read username length. */
			int userNameLength = fis.read();
			if (userNameLength == -1) {
				throw new RuntimeException("not enough data!");
			}
			userNameLength = userNameLength % (MAX_USERNAME_LENGTH+1);

			secrets[i] = "";
			for (int j = 0; j < userNameLength; j++) {
				secrets[i] += "X";
			}

		}

		return new Input("DUMMY", secrets);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		StringUtils.pad((String) secretValue, ' ', true, MAX_USERNAME_LENGTH);
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}
