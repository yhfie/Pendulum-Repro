import java.security.MessageDigestSpi;

public abstract class MessageDigest extends MessageDigestSpi {
   
    
    
    

    
    
    
    
    
    
    

    public static boolean /*isEqual_safe*/isEqual_unsafe(byte[] digesta, byte[] digestb) {
        if (digesta.length != digestb.length) {
            return false;
        }

        int result = 0;
        
        for (int i = 0; i < digesta.length; i++) {
            result |= digesta[i] ^ digestb[i];
        }
        return result == 0;
    }


}
