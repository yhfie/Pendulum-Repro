package fakejava.lang;

public class String {
    char[] chars;

    public char charAt(int index) {
        return chars[index];
    }

    public char[] toCharArray() {
        char[] result = new char[chars.length];
        for (int i = 0; i < chars.length; i++) {
            result[i] = chars[i];
        }
        return result;
    }
}
