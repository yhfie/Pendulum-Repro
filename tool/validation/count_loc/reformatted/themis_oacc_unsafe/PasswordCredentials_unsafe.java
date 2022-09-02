package com.acciente.oacc;

import java.util.Arrays;

public abstract class PasswordCredentials implements Credentials {

  public abstract char[] getPassword();

  public static PasswordCredentials newInstance(char[] password) {
    return new Impl(password);
  }

  public static class Impl extends PasswordCredentials {
    private final char[] password;

    public Impl(char[] password) {
      this.password = password;
    }

    @Override
    public char[] getPassword() {
      return password;
    }

    @Override
    public boolean equals(Object other) {
      if (this == other) {
        return true;
      }
      if (other == null || getClass() != other.getClass()) {
        return false;
      }

      Impl impl = (Impl) other;

      return ArraysIsEquals(password, impl.password);
    }

    public static boolean ArraysIsEquals(char[] a, char[] a2) {
      if (a == a2) return true;
      if (a == null || a2 == null) return false;

      int length = a.length;
      if (a2.length != length) return false;

      for (int i = 0; i < length; i++) if (a[i] != a2[i]) return false;

      return true;
    }

    @Override
    public int hashCode() {
      return Arrays.hashCode(password);
    }
  }
}
