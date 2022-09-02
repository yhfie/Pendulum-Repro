import org.junit.runner.JUnitCore;
import org.junit.runner.Result;

import java.io.PrintStream;
import java.io.OutputStream;

public class Runtest {
	public static void main(String[] args) {
		try {
			PrintStream sysOut = System.out;

			PrintStream devnull = new PrintStream(new OutputStream() {
				public void write(int b) {}
			});
			System.setOut(devnull);
			System.setErr(devnull);

			JUnitCore junitCore = new JUnitCore();
			Class<?> cls = Class.forName(args[0]);
			Result result = junitCore.run(cls);

			System.setOut(sysOut);
			
			int total = result.getRunCount();
			int failures = result.getFailureCount();
			int passes = total - failures;

			System.out.println(passes + " " + failures);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}

