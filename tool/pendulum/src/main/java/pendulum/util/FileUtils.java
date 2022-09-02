package pendulum.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.IOException;
import java.io.LineNumberReader;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

public class FileUtils {
	public static int getLineNumberOfPos(File file, int pos) {
		try {
			InputStreamReader r = new InputStreamReader(
					new FileInputStream(file));
			LineNumberReader lineNoReader = new LineNumberReader(r);
			for (int i = 0; i < pos; i++) {
				lineNoReader.read();
			}
			return lineNoReader.getLineNumber() + 1;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public static String readFile(File file) {
		try {
			byte[] bytes = Files.readAllBytes(file.toPath());
			String s = new String(bytes, StandardCharsets.UTF_8);
			return s;
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}
}
