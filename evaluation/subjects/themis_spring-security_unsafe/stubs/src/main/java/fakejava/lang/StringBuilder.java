package fakejava.lang;

public class StringBuilder {
    char[] chars = new char[0];

    public StringBuilder append(String s) {
        char[] newChars = new char[chars.length + s.chars.length];
        for (int i = 0; i < chars.length; i++) {
            newChars[i] = chars[i];
        }
        for (int i = chars.length; i < s.chars.length; i++) {
            newChars[i] = s.chars[i];
        }
        chars = newChars;
        return this;
    }

    public java.lang.String toString() {
        return new java.lang.String(chars);
    }
}
