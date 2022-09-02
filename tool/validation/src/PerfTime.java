import org.junit.runner.JUnitCore;
import org.junit.runner.Result;

import java.io.PrintStream;
import java.io.OutputStream;
import java.util.ArrayList;
public class PerfTime {
	static int runCount = 100;

	public static void main(String[] args) {
		try {
			PrintStream sysOut = System.out;

			PrintStream devnull = new PrintStream(new OutputStream() {
				public void write(int b) {}
			});

			double squareSum = 0;
			double sum = 0;

			System.setOut(devnull);
			System.setErr(devnull);

			// warm up
			for (int i = 0; i < 5; i++) {
				JUnitCore junitCore = new JUnitCore();
				Class<?> cls = Class.forName(args[0]);
				Result result = junitCore.run(cls);
			}

			for (int i = 0; i < runCount; i++) {
				JUnitCore junitCore = new JUnitCore();
				Class<?> cls = Class.forName(args[0]);
				Result result = junitCore.run(cls);

				double t = result.getRunTime();
				sum += t;
				squareSum += t * t;
			}
			System.setOut(sysOut);

			double mean = sum / runCount;
			double meanSquare = squareSum / runCount;
			double deviation = meanSquare - mean * mean;
			double stdDev = Math.sqrt(deviation);

			long meanL = Math.round(mean);
			long stdDevL = Math.round(stdDev);
			System.out.println(meanL + " " + stdDevL);

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
