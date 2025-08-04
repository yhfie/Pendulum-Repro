// unsafer.bpl(765,30): Error: undeclared identifier: java.lang.StringBuilder
// unsafer.bpl(768,4): Error: call to undeclared procedure: java.lang.StringBuilder$$la$init$ra$$
// unsafer.bpl(770,4): Error: call to undeclared procedure: java.lang.StringBuilder$append$java.lang.String
// unsafer.bpl(797,4): Error: call to undeclared procedure: java.lang.StringBuilder$append$java.lang.String
// unsafer.bpl(806,4): Error: call to undeclared procedure: java.lang.StringBuilder$append$java.lang.String
// unsafer.bpl(819,4): Error: call to undeclared procedure: java.lang.StringBuilder$append$java.lang.String
// unsafer.bpl(828,4): Error: call to undeclared procedure: java.lang.StringBuilder$append$java.lang.String
// unsafer.bpl(841,4): Error: call to undeclared procedure: java.lang.StringBuilder$append$java.lang.String
// unsafer.bpl(850,4): Error: call to undeclared procedure: java.lang.StringBuilder$append$java.lang.String
// unsafer.bpl(859,4): Error: call to undeclared procedure: java.lang.StringBuilder$toString$
// unsafer.bpl(1136,4): Error: call to undeclared procedure: java.lang.String$equals$java.lang.Object

package fakejava.lang;

public class StringBuilder {
    java.lang.String value = "";

    public StringBuilder append(java.lang.String s) {
        value = value + s;
        return this;
    }

    public StringBuilder append(char c) {
        char[] chars = { c };
        value = value + new String(chars);
        return this;
    }

    public StringBuilder append(Object o) {
        return append((char) o);
    }

    public java.lang.String toString() {
        return value;
    }

    public char[] toCharArray() {
        return value.toCharArray();
    }
}
