import org.apache.ws.security.WSSecurityException;
import org.apache.wss4j.binding.wss10.PasswordString;



public class SimplifiedUsernameTokenValidatorImpl {
	
    public static boolean unsafe_String_equals(String s1, Object s2) {
        if (s1 == s2) {
            return true;
        }
        if (s2 instanceof String) {
            String anotherString = (String)s2;
            int n = s1.length();
            if (n == anotherString.length()) {
                char v1[] = s1.toCharArray();
                char v2[] = anotherString.toCharArray();
                int i = 0;
                while (n-- != 0) {
                    if (v1[i] != v2[i])
                        return false;
                    i++;
                }
                return true;
            }
        }
        return false;
    }


	public static void verifyPlaintextPassword(PasswordString passwordType, String dBPassword)
			throws WSSecurityException {

		if (!unsafe_String_equals(passwordType.getValue(), dBPassword)) {	
			throw new WSSecurityException(WSSecurityException.FAILED_AUTHENTICATION);
		}
		passwordType.setValue(dBPassword);
	}

}
