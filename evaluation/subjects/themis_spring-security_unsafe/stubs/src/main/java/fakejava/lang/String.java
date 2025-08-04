package fakejava.lang;


public class String {
    char[] chars;

    public String(char[] chars) {
        this.chars = new char[chars.length];
        for (int i = 0; i < chars.length; i++) {
            this.chars[i] = chars[i];
        }
    }

    public String(byte[] bytes) {
        this.chars = new char[bytes.length];
        for (int i = 0; i < bytes.length; i++) {
            this.chars[i] = (char) bytes[i];
        }
    }

    public char charAt(int index) {
        return chars[index];
    }

    public byte[] getBytes(String encoding) {
        return getBytes();
    }

    public byte[] getBytes() {
        byte[] result = new byte[chars.length];
        for (int i = 0; i < chars.length; i++) {
            result[i] = (byte) (chars[i] & 0xff);
        }
        return result;
    }

    public static String format(String s, Object[] objects) {
        // not really used
        return s;
    }
}
