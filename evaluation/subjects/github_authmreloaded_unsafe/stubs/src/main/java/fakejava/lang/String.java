package fakejava.lang;

public class String {
    char[] chars;

    public char charAt(int index) {
        return chars[index];
    }

    public char[] toCharArray() {
        return chars;
    }
}
