import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import pendulum.safe.Safe;

public class ImageMatcherWorker {
  public byte[] imagedata;
  long starttime;
  byte[] iv;
  byte[] aeskey;
  public String user;
  String errorcode = "";
  StringBuffer error = new StringBuffer();
  boolean success = false;

  public static boolean test(byte[] i, byte[] pcode) {
    byte[] imagedata = null;
    boolean success = false;
    boolean state = false;
    try {

      ScalrApplyTest b = new ScalrApplyTest();
      ScalrApplyTest.setup(i);
      BufferedImage p = b.testApply1();
      int r = p.getWidth();
      int h = p.getHeight();
      int[] imageDataBuff = p.getRGB(0, 0, r, h, (int[]) null, 0, r);
      ByteBuffer byteBuffer = ByteBuffer.allocate(imageDataBuff.length * 4);
      IntBuffer intBuffer = byteBuffer.asIntBuffer();
      intBuffer.put(imageDataBuff);
      ByteArrayOutputStream baos = new ByteArrayOutputStream();
      baos.write(byteBuffer.array());
      baos.flush();
      baos.close();

      ScalrApplyTest.tearDown();
      byte[] pcodetest = new byte[128];
      int csize = imageDataBuff.length / 128;
      int ii = 0;

      for (int i1 = 0; i1 < csize * 128; i1 += csize) {
        pcodetest[ii] = (byte) (imageDataBuff[i1] % 2);
        ++ii;
      }

      imagedata = pcodetest;
      state = true;
    } catch (Exception var15) {
      System.out.println("worker ended, error: " + var15.getMessage());
    }

    if (state) {
      success = true;
      boolean _break2085 = false;
      for (int var16 = 0; var16 < imagedata.length && var16 < pcode.length; var16 += 4) {
        int var17 = Math.abs(imagedata[var16]);

        int var18 = Math.abs(pcode[var16]);

        boolean var19 = Safe.eq(var18 % 2, var17 % 2);

        boolean _b2085 = Safe.not(var19);

        success = Safe.cond(_b2085, Safe.cond(_break2085, success, false), success);
        _break2085 = Safe.cond(_b2085, true, _break2085);

        imagedata[var16] = Safe.cond(_break2085, imagedata[var16], (byte) (var19 ? 1 : 0));
      }

    } else {
      success = false;
    }
    return success;
  }
}
