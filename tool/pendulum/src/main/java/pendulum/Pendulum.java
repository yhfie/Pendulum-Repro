package pendulum;

import picocli.CommandLine;
import picocli.CommandLine.Command;
import picocli.CommandLine.Option;

import java.util.List;

@Command(name = "Pendulum",
        description = "Locate and repair timing side channel vulnerabilities, given a QFuzz log file.")
public class Pendulum implements Runnable {

	@Option(names = {"-h", "--help"}, usageHelp = true, description = "Display this help message")
	boolean usageHelpRequested;

	@Option(names = { "-f", "--log-file"}, required = true, description = "Log file of Qriver")
	String logFile = null;

	@Option(names = { "-o", "--output-dir"}, required = true, description = "Output dir of repaired codes")
	String outDir = null;

	@Override
	public void run() {
		List<Location> locations = Localizer.getFixLocations(logFile);
		FixForest forest = new FixForest(locations, outDir);
		forest.fix();
	}

	public static void main(String[] args) {
		int exitCode = new CommandLine(new Pendulum()).execute(args);
		System.exit(exitCode);
	}
}
