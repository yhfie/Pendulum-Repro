package fakejava.lang;

import java.io.Serializable;

public class Integer implements Serializable, Comparable<Integer> {
    private int value;

    public Integer(int value) {
        this.value = value;
    }

    public static Integer valueOf(int value) {
        return new Integer(value);
    }

    public int intValue() {
        return value;
    }

    @Override
    public int compareTo(Integer o) {
        if (value > o.value) {
            return 1;
        } else if (value < o.value) {
            return -1;
        } else {
            return 0;
        }
    }
}
