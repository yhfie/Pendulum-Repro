import pendulum.safe.Safe;























public abstract class UsernamePasswordLoginModule
{

   











   protected static boolean validatePassword_unsafe(String inputPassword, String expectedPassword)
   {
      if( inputPassword == null || expectedPassword == null )
         return false;
      boolean valid = false;




      valid = equals(inputPassword, expectedPassword);
      return valid;
   }


   
   
   
   
   
   
   
   
   
   
   
   public static boolean equals(String a, String b) {
      boolean _result = false;
      boolean _early = false;
      if (a == b) return true;
        int n = a.length();
        if (n == b.length()) {
            char v1[] = a.toCharArray();
            char v2[] = b.toCharArray();
            int i = 0;
            int j = 0;
            while (n-- != 0) {
               
            {
               boolean _b4702 = Safe.neq(v1[i++], v2[j++]);
               _result = Safe.cond(_b4702, Safe.cond(_early, _result, false), _result);
               _early = Safe.cond(_b4702, true, _early);

            }
            }

            return Safe.cond(_early, _result, true);
        }
      return Safe.cond(_early, _result, false);
    }

}
