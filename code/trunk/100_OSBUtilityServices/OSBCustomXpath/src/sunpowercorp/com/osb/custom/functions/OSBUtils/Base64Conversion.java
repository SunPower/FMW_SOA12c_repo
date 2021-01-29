package sunpowercorp.com.osb.custom.functions.OSBUtils;

import javax.xml.bind.DatatypeConverter;

public class Base64Conversion {
    public Base64Conversion() {
        super();
    }
    
    
    /**
       * Method to convert string to encoded base64.
       * @param normalStr
       * @return
       * @throws Exception
       */
      public static String encodeToBase64(String normalStr)
      {
        String encodedText = "";
        try
        {
          encodedText =
              DatatypeConverter.printBase64Binary(normalStr.getBytes());
        }
        catch (Exception exp)
        {
          exp.printStackTrace();
        }
        return encodedText;
      }
}
