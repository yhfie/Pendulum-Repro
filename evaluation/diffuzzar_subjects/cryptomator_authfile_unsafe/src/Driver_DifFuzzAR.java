import pendulum.AbstractQDriver;

import org.cryptomator.crypto.aes256.Aes256Cryptor;
import org.cryptomator.crypto.Cryptor;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

import java.nio.file.Files;
import java.io.ByteArrayInputStream;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.channels.SeekableByteChannel;
import static java.nio.file.StandardOpenOption.*;
import java.util.EnumSet;
import java.nio.ByteBuffer;
import java.util.Random;
import java.io.InputStream;
import java.util.Set;
import java.util.HashSet;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.PosixFilePermissions;
import java.nio.file.attribute.FileAttribute;


import edu.cmu.sv.kelinci.Mem;

/* : subject comes from
https://github.com/cryptomator/cryptomator/commit/8bfdad38b9a87b1c5dd9089205ad3fa4de2a2425 */

public class Driver {

	static int MESSAGE_LENGTH = 16;
	static int HMAC_SHA256_LENGTH = 32;
	static long RANDOM_SEED = 42;

	static EnumSet byteChannelOptions = EnumSet.of(READ, WRITE, TRUNCATE_EXISTING, CREATE, DELETE_ON_CLOSE);

	static String TMP_FILE = "/tmp/cryptomator_tmp";

	static FileAttribute fileAttr;
	static {
		Set<PosixFilePermission> filePerms = new HashSet<>();
		filePerms.add(PosixFilePermission.OWNER_READ);
		filePerms.add(PosixFilePermission.OWNER_WRITE);

		fileAttr = PosixFilePermissions.asFileAttribute(filePerms);
	}

	public static void main(String[] args) {
		SeekableByteChannel encryptedFile1 = null;
		SeekableByteChannel encryptedFile2 = null;
		
		Random random = new Random(RANDOM_SEED);
		Aes256Cryptor cryptor = new Aes256Cryptor(random);

		Mem.clear();
		cryptor.authenticateContent_unsafe(encryptedFile1);
		Mem.clear();
		cryptor.authenticateContent_unsafe(encryptedFile2);
	}
}

