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


  
   /*private*/public static boolean /*slowEquals*/equals(String stinga, String stringb)
   {
       int aLength = stinga.length();
       int bLength = stringb.length();
       int diff = aLength ^ bLength;
       int lenght = Math.min(aLength, bLength);
       for(int i = 0; i < lenght; i++)
       {
           diff |= stinga.charAt(i) ^ stringb.charAt(i);
       }
       return diff == 0;
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   

}
