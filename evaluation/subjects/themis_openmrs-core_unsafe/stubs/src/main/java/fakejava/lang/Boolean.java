package fakejava.lang;

public class Boolean {
    boolean value;

    public Boolean(boolean value) {
        this.value = value;
    }

    public static Boolean valueOf(boolean value) {
        return new Boolean(value);
    }

    public boolean booleanValue() {
        return value;
    }
}
