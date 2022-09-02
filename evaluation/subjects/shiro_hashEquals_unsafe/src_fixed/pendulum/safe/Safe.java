package pendulum.safe;

public class Safe {
    public static boolean not(boolean b) {
        boolean result = false;
        if (b) result = false;
        if (!b) result = true;
        return result;
    }

    public static boolean and(boolean a, boolean b) {
        return a & b;
    }

    public static boolean or(boolean a, boolean b) {
        return a | b;
    }

    public static boolean gt(long a, long b) {
        boolean result = false;
        if (a > b) result = true;
        if (a <= b) result = false;
        return result;
    }

    public static boolean lt(long a, long b) {
        boolean result = false;
        if (a < b) result = true;
        if (a >= b) result = false;
        return result;
    }

    public static boolean ge(long a, long b) {
        boolean result = false;
        if (a >= b) result = true;
        if (a < b) result = false;
        return result;
    }

    public static boolean le(long a, long b) {
        boolean result = false;
        if (a <= b) result = true;
        if (a > b) result = false;
        return result;
    }

    public static boolean eq(long a, long b) {
        boolean result = false;
        if (a == b) result = true;
        if (a != b) result = false;
        return result;
    }

    public static boolean neq(long a, long b) {
        boolean result = false;
        if (a != b) result = true;
        if (a == b) result = false;
        return result;
    }

    public static boolean gt(double a, double b) {
        boolean result = false;
        if (a > b) result = true;
        if (a <= b) result = false;
        return result;
    }

    public static boolean lt(double a, double b) {
        boolean result = false;
        if (a < b) result = true;
        if (a >= b) result = false;
        return result;
    }

    public static boolean ge(double a, double b) {
        boolean result = false;
        if (a >= b) result = true;
        if (a < b) result = false;
        return result;
    }

    public static boolean le(double a, double b) {
        boolean result = false;
        if (a <= b) result = true;
        if (a > b) result = false;
        return result;
    }

    public static boolean eq(double a, double b) {
        boolean result = false;
        if (a == b) result = true;
        if (a != b) result = false;
        return result;
    }

    public static boolean neq(double a, double b) {
        boolean result = false;
        if (a != b) result = true;
        if (a == b) result = false;
        return result;
    }

    public static boolean eq(Object a, Object b) {
        boolean result = false;
        if (a == b) result = true;
        if (a != b) result = false;
        return result;
    }

    public static boolean neq(Object a, Object b) {
        boolean result = false;
        if (a != b) result = true;
        if (a == b) result = false;
        return result;
    }
    public static <T> T cond(boolean cond, T t1, T t2) {
        T t = null;
        if (cond) t = t1;
        if (!cond) t = t2;
        return t;
    }
}
