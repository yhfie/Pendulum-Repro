import sg.edu.nus.comp.tsunami.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.Arrays;

import org.h2.jdbcx.JdbcConnectionPool;

import edu.cmu.sv.kelinci.Mem;

public class QDriver extends AbstractQDriver {

	public static final int MAX_PASSWORD_LENGTH = 16; // bytes

	static String pw = "1234";

	DataSourceRealm DSR;
	Connection dbConnection;

	public QDriver() {
		super();

		String dataSourceName = "jdbc:h2:~/tomcat-fuzz";
        JdbcConnectionPool ds = JdbcConnectionPool.create(dataSourceName, "sa", "");

		DSR = new DataSourceRealm();
		DSR.setDataSourceName(dataSourceName);

		/* Create Connection do database. */
		dbConnection = null;

		// Ensure that we have an open database connection
		dbConnection = DSR.open();
		if (dbConnection == null) {
			// If the db connection open fails, return "not authenticated"
			System.out.println("DB connection failed...");
		}

		Statement st;
		try {
			st = dbConnection.createStatement();
			String sql = String.format(
				"create table users (user_name varchar(%d), user_pass varchar(%d));",
				MAX_PASSWORD_LENGTH, MAX_PASSWORD_LENGTH);
			st.execute("drop table if exists users");
			st.execute(sql);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String public_user;
		String[] secret_users = new String[K];

		/* Read public value for public_actual */
		byte[] bytes = new byte[MAX_PASSWORD_LENGTH];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		char[] tmp = new char[bytes.length];
		for (int i = 0; i < bytes.length; i++) {
			char value = (char) bytes[i];
			/* Rhf: avoid single quote */
			tmp[i] = (char) ((value % 87) + 40);
		}
		public_user = new String(tmp);

		/* Generate secrets. */
		for (int i = 0; i < K; i++) {

			bytes = new byte[MAX_PASSWORD_LENGTH];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			tmp = new char[bytes.length];
			for (int j = 0; j < bytes.length; j++) {
				char value = (char) bytes[j];
				/* each char value must be between 0 and 127 and a printable character */
				/* Rhf: avoid single quote */
				char charValue = (char) ((value % 87) + 40);
				tmp[j] = charValue;
			}
			secret_users[i] = new String(tmp);
		}

		// System.out.println("public_actual = " + public_user);
		// for (int i = 0; i < K; i++) {
			// System.out.println("secrets_expected " + i + " = " + secret_users[i]);
		// }

		return new Input(public_user, secret_users);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		String public_user = (String) publicValue;
		Statement st;
		try {
			st = dbConnection.createStatement();
			st.execute("delete from users;");
			st.execute("insert into users (user_name, user_pass) values ('" + public_user + "', '" + pw + "');");
		} catch (Exception e) {
			System.out.println(e.toString());
			System.out.println("Could not insert user in the table...");
			throw new RuntimeException(e);
		}

		Mem.clear(false);
	
		DSR.authenticate_unsafe(dbConnection, (String) secretValue, pw);
	}

	@Override
	public void afterFuzzingCampaign() {
		Statement st;
		/* Clean database. */
		try {
			st = dbConnection.createStatement();
			st.execute("drop table if exists users");
		} catch (Exception e) {
			throw new RuntimeException(e);
		} finally {
			DSR.close(dbConnection);
		}
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}

