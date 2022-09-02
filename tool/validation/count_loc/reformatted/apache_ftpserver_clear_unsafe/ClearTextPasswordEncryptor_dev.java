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
    int limit = 1024;
    String input = (String) thisObject;
    String password = (String) otherObject;
    if (limit < password.length()) {
      throw new IllegalArgumentException("limit must be equal or greater than the password length");
    }
    int result = (input.length() == password.length()) ? 0 : 1;
    for (int i = 0; i < limit; i++) {
      result |= (input.charAt(i % input.length()) ^ password.charAt(i % password.length()));
    }

    return (result == 0);
  }

  public boolean isEqual_safe(String a, String b) {
    char a_value[] = a.toCharArray();
    char b_value[] = b.toCharArray();
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
