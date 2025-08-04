// package org.springframework.security.authentication.encoding;

import sg.edu.nus.comp.tsunami.safe.Safe;



// import org.springframework.security.crypto.codec.Utf8;

import java.io.UnsupportedEncodingException;

/**
 * Utility for constant time comparison to prevent against timing attacks.
 *
 * @author Rob Winch
 */
class PasswordEncoderUtils {

    /**
     * Constant time comparison to prevent against timing attacks.
     * @param expected
     * @param actual
     * @return
     */
    // static boolean equals_safe(String expected, String actual) {
    //     byte[] expectedBytes = bytesUtf8(expected);
    //     byte[] actualBytes = bytesUtf8(actual);
    //     int expectedLength = expectedBytes == null ? -1 : expectedBytes.length;
    //     int actualLength = actualBytes == null ? -1 : actualBytes.length;

    //     int result = expectedLength != actualLength ? 1 : 0;
    //     for (int i = 0; i < actualLength; i++) {
    //         result |= expectedBytes[i % expectedLength] ^ actualBytes[i % actualLength];
    //     }
    //     return result == 0;
    // }

    static boolean equals_unsafe(String expected, String actual) {
        boolean _result = false;
        boolean _early = false;
        byte[] expectedBytes = bytesUtf8(expected);
        byte[] actualBytes = bytesUtf8(actual);
        int expectedLength = expectedBytes == null ? -1 : expectedBytes.length;
        int actualLength = actualBytes == null ? -1 : actualBytes.length;

        boolean _b1377 = Safe.neq(expectedLength, actualLength);
        {
        _result = Safe.cond(_b1377, Safe.cond(_early, _result, false), _result);
        _early = Safe.cond(_b1377, true, _early);
        }

  
        int result = 0;
        for (int i = 0; i < expectedLength; i++) {
            result |= expectedBytes[i] ^ actualBytes[i];
        }
        return Safe.cond(_early, _result, result == 0);
    }

    private static byte[] bytesUtf8(String s) {
        try {
            if (s == null) {
                return null;
            }

            return s.getBytes("UTF-8");
        // return Utf8.encode(s);
        }catch(UnsupportedEncodingException e) {
                // e.printStackTrace();
                System.out.println("Error in UTF-8...");
                return null;
         }
    }

    // private PasswordEncoderUtils() {
    // }
}
