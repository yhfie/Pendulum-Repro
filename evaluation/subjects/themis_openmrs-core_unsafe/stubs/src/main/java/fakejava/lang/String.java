// unsafer.bpl(572,4): Error: call to undeclared procedure: java.lang.String$getBytes$java.nio.charset.Charset
// unsafer.bpl(698,4): Error: call to undeclared procedure: java.lang.String$getBytes$java.nio.charset.Charset
// unsafer.bpl(1039,4): Error: call to undeclared procedure: java.lang.StringBuilder$append$char
// unsafer.bpl(1051,4): Error: call to undeclared procedure: java.lang.StringBuilder$append$char
// unsafer.bpl(1122,4): Error: call to undeclared procedure: java.lang.String$getBytes$java.nio.charset.Charset
// unsafer.bpl(1302,4): Error: call to undeclared procedure: java.lang.String$$la$init$ra$$java.lang.StringBuilder
// unsafer.bpl(1489,4): Error: call to undeclared procedure: java.lang.String$getBytes$java.nio.charset.Charset
// unsafer.bpl(1542,4): Error: call to undeclared procedure: java.lang.String$$la$init$ra$$byte$lp$$rp$_java.nio.charset.Charset
// unsafer.bpl(1744,4): Error: call to undeclared procedure: java.lang.String$$la$init$ra$$byte$lp$$rp$_java.nio.charset.Charset

package fakejava.lang;

import fakejava.nio.charset.Charset;

import java.util.Arrays;

public class String {
    char[] chars;

    public String(char[] chars) {
        this.chars = chars;
    }

    public String(byte[] bytes, Charset charset) {
        chars = new char[bytes.length];
        for (int i = 0; i < bytes.length; i++) {
            chars[i] = (char) bytes[i]; 
        }
    }

    public String(StringBuilder builder) {
        chars = builder.toCharArray();
    }

    public char charAt(int index) {
        return chars[index];
    }

    public byte[] getBytes() {
        byte[] bytes = new byte[chars.length];
        for (int i = 0; i < chars.length; i++) {
          bytes[i] = (byte) chars[i]; 
        }
        return bytes;
    }

    public byte[] getBytes(Charset charset) {
        return getBytes();
    }

    public char[] toCharArray() {
        return chars;   
    }

    public char[] toCharArray(Charset charset) {
        return chars;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + Arrays.hashCode(chars);
        return result;
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
