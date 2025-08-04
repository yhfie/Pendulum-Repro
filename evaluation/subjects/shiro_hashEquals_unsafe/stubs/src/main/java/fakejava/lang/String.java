package fakejava.lang;

public class String {
    public char[] chars;

    public String(char[] chars) {
        this.chars = chars;
    }

    public char charAt(int index) {
        return chars[index];
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        String other = (String) obj;
        
        if (chars.length != other.chars.length) {
            return false;
        }
        for (int i = 0; i < chars.length; i++) {
            if (chars[i] != other.chars[i]) {
                return false;
            }
        }
        return true;
    }
}
