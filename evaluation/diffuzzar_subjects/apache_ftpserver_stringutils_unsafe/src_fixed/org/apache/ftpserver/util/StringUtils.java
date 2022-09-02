package org.apache.ftpserver.util;
import java.util.Map;
public class StringUtils {
    public static boolean safeMode = false;

    public static final String replaceString(String source, String oldStr, String newStr) {
        StringBuilder sb = new StringBuilder(source.length());
        int sind = 0;
        int cind = 0;
        while ((cind = source.indexOf(oldStr, sind)) != (-1)) {
            sb.append(source.substring(sind, cind));
            sb.append(newStr);
            sind = cind + oldStr.length();
        } 
        sb.append(source.substring(sind));
        return sb.toString();
    }

    public static final String replaceString(String source, Object[] args) {
        int startIndex = 0;
        int openIndex = source.indexOf('{', startIndex);
        if (openIndex == (-1)) {
            return source;
        }
        int closeIndex = source.indexOf('}', startIndex);
        if ((closeIndex == (-1)) || (openIndex > closeIndex)) {
            return source;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(source.substring(startIndex, openIndex));
        while (true) {
            String intStr = source.substring(openIndex + 1, closeIndex);
            int index = Integer.parseInt(intStr);
            sb.append(args[index]);
            startIndex = closeIndex + 1;
            openIndex = source.indexOf('{', startIndex);
            if (openIndex == (-1)) {
                sb.append(source.substring(startIndex));
                break;
            }
            closeIndex = source.indexOf('}', startIndex);
            if ((closeIndex == (-1)) || (openIndex > closeIndex)) {
                sb.append(source.substring(startIndex));
                break;
            }
            sb.append(source.substring(startIndex, openIndex));
        } 
        return sb.toString();
    }

    public static final String replaceString(String source, Map<String, Object> args) {
        int startIndex = 0;
        int openIndex = source.indexOf('{', startIndex);
        if (openIndex == (-1)) {
            return source;
        }
        int closeIndex = source.indexOf('}', startIndex);
        if ((closeIndex == (-1)) || (openIndex > closeIndex)) {
            return source;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(source.substring(startIndex, openIndex));
        while (true) {
            String key = source.substring(openIndex + 1, closeIndex);
            Object val = args.get(key);
            if (val != null) {
                sb.append(val);
            }
            startIndex = closeIndex + 1;
            openIndex = source.indexOf('{', startIndex);
            if (openIndex == (-1)) {
                sb.append(source.substring(startIndex));
                break;
            }
            closeIndex = source.indexOf('}', startIndex);
            if ((closeIndex == (-1)) || (openIndex > closeIndex)) {
                sb.append(source.substring(startIndex));
                break;
            }
            sb.append(source.substring(startIndex, openIndex));
        } 
        return sb.toString();
    }

    public static final String formatHtml(String source, boolean bReplaceNl, boolean bReplaceTag, boolean bReplaceQuote) {
        StringBuilder sb = new StringBuilder();
        int len = source.length();
        for (int i = 0; i < len; i++) {
            char c = source.charAt(i);
            switch (c) {
                case '\"' :
                    if (bReplaceQuote)
                        sb.append("&quot;");
                    else
                        sb.append(c);

                    break;
                case '<' :
                    if (bReplaceTag)
                        sb.append("&lt;");
                    else
                        sb.append(c);

                    break;
                case '>' :
                    if (bReplaceTag)
                        sb.append("&gt;");
                    else
                        sb.append(c);

                    break;
                case '\n' :
                    if (bReplaceNl) {
                        if (bReplaceTag)
                            sb.append("&lt;br&gt;");
                        else
                            sb.append("<br>");

                    } else {
                        sb.append(c);
                    }
                    break;
                case '\r' :
                    break;
                case '&' :
                    sb.append("&amp;");
                    break;
                default :
                    sb.append(c);
                    break;
            }
        }
        return sb.toString();
    }

    public static final String pad(String src, char padChar, boolean rightPad, int totalLength) {
        return pad_unsafe(src, padChar, rightPad, totalLength);
    }

    public static final String pad_unsafe$Old(String src, char padChar, boolean rightPad, int totalLength) {
        int srcLength = src.length();
        if (srcLength >= totalLength) {
            return src;
        }
        int padLength = totalLength - srcLength;
        StringBuilder sb = new StringBuilder(padLength);
        for (int i = 0; i < padLength; ++i) {
            sb.append(padChar);
        }
        if (rightPad) {
            return src + sb.toString();
        } else {
            return sb.toString() + src;
        }
    }

    public static final String pad_unsafe(String src, char padChar, boolean rightPad, int totalLength) {
        int $5 = 0;
        int $4 = src.length();
        int $3 = totalLength;
        String $2;
        String $1;
        int srcLength = src.length();
        StringBuilder $6 = new StringBuilder(srcLength);
        if (srcLength >= totalLength) {
            $1 = src;
        } else {
            $2 = src;
        }
        int padLength = 0;
        if (!(srcLength >= totalLength)) {
            padLength = totalLength - srcLength;
        } else {
            $5 = $3 - $4;
        }
        StringBuilder sb = new StringBuilder(padLength);
        for (int i = 0; i < totalLength; ++i) {
            if (i < padLength) {
                sb.append(padChar);
            } else {
                $6.append(padChar);
            }
        }
        if (rightPad) {
            $1 = src + sb.toString();
        } else {
            $1 = sb.toString() + src;
        }
        return $1;
    }

    public static final String toHexString(byte[] res) {
        StringBuilder sb = new StringBuilder(res.length << 1);
        for (int i = 0; i < res.length; i++) {
            String digit = Integer.toHexString(0xff & res[i]);
            if (digit.length() == 1) {
                sb.append('0');
            }
            sb.append(digit);
        }
        return sb.toString().toUpperCase();
    }

    public static final byte[] toByteArray(String hexString) {
        int arrLength = hexString.length() >> 1;
        byte[] buff = new byte[arrLength];
        for (int i = 0; i < arrLength; i++) {
            int index = i << 1;
            String digit = hexString.substring(index, index + 2);
            buff[i] = ((byte) (Integer.parseInt(digit, 16)));
        }
        return buff;
    }
}