package gnupgapi;



import java.util.*;
import java.io.*;

import javax.jws.WebMethod;
import javax.jws.WebService;


/**
 * A class that implements PGP interface for Java.
 * <P>
 * It calls gpg (GnuPG) program to do all the PGP processing.
 * $Id:$
 *
 * @author	Yaniv Yemini, January 2004.
 * @author	Please include this text with any copy of this code.
 * @author	.
 * @author	License: GPL v3
 * @author	Latest version of this code can be found at:
 * @author	http://www.macnews.co.il/mageworks/java/gnupg/
 * @author	.
 * @author	Based on a class GnuPG by John Anderson, which can be found
 * @author	at: http://lists.gnupg.org/pipermail/gnupg-devel/2002-February/018098.html
 * @version	0.5
 * @see		GnuPG - http://www.gnupg.org/
 */
@WebService

public class GnuPG {
	
	// Konstants:
	//private final String kGnuPGCommand = "/usr/local/bin/gpg --batch --armor --output -";
	private final String kGnuPGCommand = "/usr/bin/gpg --homedir /home/soaadmin/opt/gnupg --batch --yes --armor ";
        
	
	// Class vars:
	private String	gpg_result;
	
	
    public APIOutput ProcessGnuPG (APIInput input){
        APIOutput output = new APIOutput();
        GnuPG pgp = new GnuPG ();
        String operation = input.getOperation();
        System.out.println("Operation ----> "+operation);
        String passPhrase = input.getPassPhrase();
        System.out.println("passPhrase ----> "+passPhrase);
        String SourceLoc = input.getSourceLoc();
        System.out.println("SourceLoc ----> "+SourceLoc);
        String DestLoc = input.getDestLoc();
        System.out.println("DestLoc ----> "+DestLoc);        
        try {
            if (operation.equals("encrypt")){
                System.out.println("Encrypting");
                output = pgp.encrypt(passPhrase, DestLoc, SourceLoc);
            }
            else if (operation.equals("decrypt")){
                System.out.println("Decrypting");
                output = pgp.decrypt(passPhrase, DestLoc, SourceLoc);
            }
        }
        
        catch(Exception e) {
            System.out.println("Exception ---> " + e.getMessage());
            output.Error_Message = e.getMessage();
            output.setResult(false);
        }        
        return output;        
    }
	
	/**
	 * Encrypt
	 *
	 * @param	inStr		input string to encrypt
	 * @param	keyID		key ID of the key in GnuPG's key database to encrypt with
	 * @return				true upon success
	 */
    
    private APIOutput encrypt (String passPhrase, String outLoc,String sourceLoc)
    {
        APIOutput output = new APIOutput();         
        output = customrunGnuPG ("--passphrase=" + passPhrase + " --output " + outLoc +" -c "+sourceLoc);
        return output;
    }
    
	
	
	/**
	 * Decrypt
	 *
	 * @param	inStr		input string to decrypt
	 * @param	passPhrase	passphrase for the personal private key to sign with
	 * @return				true upon success
	 */
        
    private APIOutput decrypt (String passPhrase, String outLoc,String sourceLoc)
    {
        APIOutput output = new APIOutput();        
        output = customrunGnuPG ( "--passphrase=" + passPhrase + " --output " + outLoc +" "+ sourceLoc);            
        return output;
    }
	
	
	
	/**
	 * Runs GnuPG external program
	 *
	 * @param	commandArgs	command line arguments
	 * @param	inputStr	key ID of the key in GnuPG's key database
	 * @return				true if success.
	 */
	
        
    private APIOutput customrunGnuPG (String commandArgs)
    {
            Process         p;
            String          fullCommand = kGnuPGCommand + " " + commandArgs;
            APIOutput output = new APIOutput();
            
            java.util.Scanner s ;
    //              String          fullCommand = commandArgs;
            //String                fullCommand = "/usr/bin/gpg --homedir /home/soaadmin/opt/gnupg --batch --yes --armor --output - --recipient 47A18EBA --encrypt /soadata/temp/test/sample.txt";
            
            System.out.println (fullCommand);
            
            try
            {                        
                    System.out.println("Executing Command");
                    p = Runtime.getRuntime().exec(fullCommand);
                    s = new java.util.Scanner(p.getErrorStream()).useDelimiter("\\A");
                    String ProcessError = s.hasNext() ? s.next() : "";
                    if(ProcessError.contains("gpg: WARNING: message was not integrity protected")) {
                        output.setError_Message("Success");
                        output.setResult(true);
                    }
                    else if(ProcessError.length() > 0) {
                        output.setError_Message(ProcessError);
                        output.setResult(false);
                        
                    }
                    else {
                        output.setError_Message("Success");
                        output.setResult(true);
                    }
                    s.close();                
                    System.out.println("ProcessError -------> "+ProcessError);
            }
            catch(IOException io)
            {
                    System.out.println ("io Error" + io.getMessage ());
                    output.setError_Message(io.getMessage ());
                    output.setResult(false);
                    
            }
            
        catch(Exception e)
        {
                System.out.println ("Error" + e.getMessage ());
                output.setError_Message(e.getMessage ());
                output.setResult(false);
                
        }
            
            return output;
    }


    @WebMethod(exclude = true)
    public static void main (String args[])
	{
        // use this to check:
        System.out.println("Hello World!");
		GnuPG pgp = new GnuPG ();
                APIInput input = new APIInput();
                APIOutput output = new APIOutput();
                input.setOperation(args[0]);
                input.setPassPhrase(args[1]);
                input.setDestLoc(args[2]);
                input.setSourceLoc(args[3]);
		if (args[0].equals ("encrypt")){                        
			//pgp.encrypt (args[1], args[2]);
			//pgp.encrypt (args[1], args[2],args[3]);
                        output = pgp.ProcessGnuPG(input);
                        System.out.println("Resp String ------> "+output.getResult());
                        System.out.println("Resp Error Message ------> "+output.getError_Message());
                }
        else if (args[0].equals ("decrypt")){
			//pgp.decrypt (args[1], args[2]);
    			//pgp.decrypt (args[1], args[2],args[3]);
    			output = pgp.ProcessGnuPG(input);
    			System.out.println("Resp String ------> "+output.getResult());
    			System.out.println("Resp Error Message ------> "+output.getError_Message());
    			
        }
		System.out.println("result: " + pgp.gpg_result + "\n\n");
		//System.out.println("error: " + pgp.gpg_err + "\n\n");
		//System.out.println("exit: " + pgp.gpg_exitCode + "\n\n");
    }
	
}