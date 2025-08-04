package org.apache.ftpserver.usermanager;
public class ClearTextPasswordEncryptor implements PasswordEncryptor {
    private boolean safeMode;

    public ClearTextPasswordEncryptor() {
        this.safeMode = false;
    }

    public ClearTextPasswordEncryptor(boolean safeMode) {
        this.safeMode = safeMode;
    }

    public String encrypt(String password) {
        return password;
    }

    public boolean matches$Old(String passwordToCheck, String storedPassword) {
        if (storedPassword == null) {
            throw new NullPointerException("storedPassword can not be null");
        }
        if (passwordToCheck == null) {
            throw new NullPointerException("passwordToCheck can not be null");
        }
        return isEqual_unsafe(passwordToCheck, storedPassword);
    }

    public boolean matches(String passwordToCheck, String storedPassword) {
        if (storedPassword == null) {
            throw new NullPointerException("storedPassword can not be null");
        }
        if (passwordToCheck == null) {
            throw new NullPointerException("passwordToCheck can not be null");
        }
        return isEqual_unsafe(passwordToCheck, storedPassword);
    }

    public boolean isEqual_unsafe(String thisObject, Object otherObject) {
        if (thisObject == otherObject) {
            return true;
        }
        if (otherObject instanceof String) {
            String anotherString = ((String) (otherObject));
            int n = thisObject.length();
            if (n == anotherString.length()) {
                char[] v1 = thisObject.toCharArray();
                char[] v2 = anotherString.toCharArray();
                int i = 0;
                while ((n--) != 0) {
                    if (v1[i] != v2[i])
                        return false;

                    i++;
                } 
                return true;
            }
        }
        return false;
    }

    public boolean isEqual_safe(String a, String b) {
        char[] a_value = a.toCharArray();
        char[] b_value = b.toCharArray();
        boolean unused;
        boolean matches = true;
        for (int i = 0; i < a_value.length; i++) {
            if (i < b_value.length) {
                if (a_value[i] != b_value[i]) {
                    matches = false;
                } else {
                    unused = true;
                }
            } else {
                unused = false;
                unused = true;
            }
        }
        return matches;
    }
}