import pendulum.safe.Safe;

import java.security.MessageDigestSpi;

public abstract class MessageDigest extends MessageDigestSpi {
   
    public static boolean isEqual_unsafe(byte digesta[], byte digestb[]) {
        boolean _result = false;
        boolean _early = false;
        if (digesta.length != digestb.length)
            return false;

        for (int i = 0; i < digesta.length; i++) {
            
        {
            boolean _b588 = Safe.neq(digesta[i], digestb[i]);
            {
            _result = Safe.cond(_b588, Safe.cond(_early, _result, false), _result);
            _early = Safe.cond(_b588, true, _early);
            }

        }
        }

        return Safe.cond(_early, _result, true);
    }

    
    
    
    

    
    
    
    
    
    
    


}
