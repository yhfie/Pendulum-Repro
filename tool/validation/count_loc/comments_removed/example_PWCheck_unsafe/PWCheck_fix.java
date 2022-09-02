import pendulum.safe.Safe;

public class PWCheck {
    public static boolean pwcheck1_unsafe(byte[] guess, byte[] pw) {
        boolean _result = false;
        boolean _early = false;
        if (guess.length != pw.length) {
            return false;
        }

        int i = 0;

        for (i = 0; i < guess.length; i++) {
            
        {
            boolean _b243 = Safe.neq(guess[i], pw[i]);
            {
            _result = Safe.cond(_b243, Safe.cond(_early, _result, false), _result);
            _early = Safe.cond(_b243, true, _early);
            }

        }
        }


        return Safe.cond(_early, _result, true);

    }

    public static boolean pwcheck2_unsafe(byte[] guess, byte[] pw) {
        if (guess.length != pw.length) {
            return false;
        }

        int i;
        boolean unused;
        boolean matches = true;
        for (i = 0; i < guess.length; i++) {
            if (i < pw.length) {
                if (guess[i] != pw[i]) {
                    matches = false;
                } else {
                    unused = true;
                }
            } else {
                unused = false;
                unused = true;
            }
        }
        return matches;
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    

    
}
