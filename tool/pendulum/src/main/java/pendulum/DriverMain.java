package pendulum;

import java.lang.reflect.Method;

public class DriverMain {
	public static void main(String[] args) {
		if (args.length != 2) {
			System.out.println("Expect two parameters: driver class name, input file name.");
			return;
		}

		try {
			String driverClassName = args[0];
			Class<? extends AbstractQDriver> driverClass =
					Class.forName(driverClassName).asSubclass(AbstractQDriver.class);
			Method method = driverClass.getMethod("acceptFile", String.class);
			Object qDriver = driverClass.getConstructor().newInstance();
			method.invoke(qDriver, args[1]);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
