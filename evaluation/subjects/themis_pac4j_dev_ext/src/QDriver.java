import sg.edu.nus.comp.tsunami.AbstractQDriver;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

import javax.sql.DataSource;

import org.h2.jdbcx.JdbcConnectionPool;
import org.pac4j.core.credentials.UsernamePasswordCredentials;
import org.skife.jdbi.v2.DBI;
import org.skife.jdbi.v2.Handle;

import edu.cmu.sv.kelinci.Mem;

/*
* Username might be in database or not Encoding/Hashing of given password is expensive. The unsafe version does
* encoding only if username is in database.
*
* Password is actually not relevant here, but we would use the same password for both executions.
*/
public class QDriver extends AbstractQDriver {

    private static final int USERNAME_MAX_LENGTH = 5; // # of characters
    private static final int PASSWORD_MAX_LENGTH = 20;

	DataSource ds;
	DBI dbi;
	DbAuthenticator dbAuth;

	public QDriver() {
		super();

        ds = JdbcConnectionPool.create("jdbc:h2:~/pac4j-fuzz", "sa", "");
        dbi = new DBI(ds);

        dbAuth = new DbAuthenticator();
        dbAuth.dbi = dbi;

        Handle h = dbi.open();
        try {
            h.execute("drop table if exists users");

			String createTable = String.format(
					"create table users (id int, username varchar(%d), password varchar(%d));",
					USERNAME_MAX_LENGTH, PASSWORD_MAX_LENGTH);
            h.execute(createTable);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
	}

	@Override
	public Input parseInput(FileInputStream fis) throws Exception {
		String public_user;
		String public_pw;
		String[] secret_user = new String[K];

		// Read all inputs.

		/* Read public value for public_user */
		byte[] bytes = new byte[USERNAME_MAX_LENGTH];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		char[] tmp = new char[bytes.length];
		for (int i = 0; i < bytes.length; i++) {
			char value = (char) bytes[i];
			tmp[i] = (char) ((value % 94) + 33);
		}
		public_user = new String(tmp);
		
		/* Read public value for public_user */
		bytes = new byte[PASSWORD_MAX_LENGTH];
		if (fis.read(bytes) < 0) {
			throw new RuntimeException("Not enough input data...");
		}
		tmp = new char[bytes.length];
		for (int i = 0; i < bytes.length; i++) {
			char value = (char) bytes[i];
			tmp[i] = (char) ((value % 94) + 33);
		}
		public_pw = new String(tmp);

		/* Generate secrets. */
		for (int i = 0; i < K; i++) {

			bytes = new byte[USERNAME_MAX_LENGTH];
			if (fis.read(bytes) < 0) {
				throw new RuntimeException("Not enough input data...");
			}
			tmp = new char[bytes.length];
			for (int j = 0; j < bytes.length; j++) {
				char value = (char) bytes[j];
				/* each char value must be between 0 and 127 and a printable character */
				char charValue = (char) ((value % 94) + 33);
				tmp[j] = charValue;
			}
			secret_user[i] = new String(tmp);
		}

		String[] publicValue = new String[] { public_user, public_pw };
		return new Input(publicValue, secret_user);
	}

	@Override
	public void runOne(Object publicValue, Object secretValue) throws Exception {
		String[] tmp = (String[]) publicValue;
		String public_user = tmp[0];
		String public_pw = tmp[1];

        /* Prepare database. */
        Handle h = dbi.open();
        try {
            String processedPW = dbAuth.getPasswordEncoder().encode(public_pw);
            h.execute("delete from users");
            h.execute("insert into users (id, username, password) values (1, ?, ?)", public_user, processedPW); // add user
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            h.close();
        }

		UsernamePasswordCredentials cred_secr = new UsernamePasswordCredentials((String) secretValue, public_pw, ""); // public info

		Mem.clear(false);
		dbAuth.validate_unsafe(cred_secr);
	}

	@Override
	public Object publicFromString(String publicValue) {
		return publicValue.split(" ");
	}

	@Override
	public String publicToString(Object publicValue) {
		String[] tmp = (String[]) publicValue;
		return tmp[0] + " " + tmp[1];
	}

	@Override
	public void afterFuzzingCampaign() {
        Handle h = dbi.open();
        try {
            h.execute("drop table if exists users");
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            h.close();
        }
	}

	public static void main(String[] args) {
		QDriver qDriver = new QDriver();
		qDriver.acceptFile("in_dir/example.txt");
	}
}
