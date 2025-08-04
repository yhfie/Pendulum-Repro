package fakejava.math;

public class BigInteger {
    long value;

    public BigInteger(long value) {
        this.value = value;
    }

    public static BigInteger valueOf(long value) {
        return new BigInteger(value);
    }

    public static BigInteger ONE = new BigInteger(1);
    public static BigInteger ZERO = new BigInteger(0);

    public BigInteger multiply(BigInteger other) {
        return new BigInteger(value * other.value);
    }

    public BigInteger shiftRight(int n) {
        return new BigInteger(value >> n);
    }

    public BigInteger shiftLeft(int n) {
        return new BigInteger(value << n);
    }

    public BigInteger subtract(BigInteger other) {
        return new BigInteger(value - other.value);
    }

    public BigInteger add(BigInteger other) {
        return new BigInteger(value + other.value);
    }

    public BigInteger mod(BigInteger other) {
        if (other.value <= 0) {
            throw new ArithmeticException();
        }
        
        if (value >= 0) {
            return new BigInteger(value % other.value);
        } else {
            return new BigInteger((other.value - ((-value) % other.value)) % other.value);
        }
    }

    public int bitLength() {
        if (value == 0) {
            return 0;
        }

        long tmp = value > 0 ? value : (-value - 1);
        int result = 0;
        while (tmp > 0) {
            result++;
            tmp >>= 1;
        }

        return result;
    }

    public boolean testBit(int n) {
        return (value & (1 << n)) != 0;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof BigInteger))
            return false;
        BigInteger other = (BigInteger) obj;
        if (value != other.value)
            return false;
        return true;
    }

    
}
