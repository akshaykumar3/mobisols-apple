/**
 * 
 */
package com.mobisols.tollpayments.myutilsImpl;

/**
 * @author Raghu
 *
 */
import java.io.UnsupportedEncodingException;
import java.security.spec.InvalidKeySpecException;

import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

public class EncryptUtil {

	 
	public static String encrypt(String data,String passPhrase){
		
		try {
				DESKeySpec keySpec = new DESKeySpec(passPhrase.getBytes());
				SecretKey key = SecretKeyFactory.getInstance("DES").generateSecret(keySpec);
				Cipher ecipher = Cipher.getInstance("DES");
				ecipher.init(Cipher.ENCRYPT_MODE, key);
				// Encode the string into bytes using utf-8
	            byte[] utf8 = data.getBytes("UTF8");

	            // Encrypt
	            byte[] enc = ecipher.doFinal(utf8);

	            // Encode bytes to base64 to get a string
	            String encode = new String(Base64Coder.encode(enc));
				return encode;
	        } catch (javax.crypto.NoSuchPaddingException e) {
	        } catch (java.security.NoSuchAlgorithmException e) {
	        } catch (java.security.InvalidKeyException e) {
	        } catch (javax.crypto.BadPaddingException e) {
	        } catch (IllegalBlockSizeException e) {
	        } catch (UnsupportedEncodingException e) {
	        } catch (java.io.IOException e) {
	        } catch (InvalidKeySpecException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        return null;
	}
	
	public static String encrypt(String data){
		return null;
	}
	
	public static String decrypt(String data,String passPhrase){
		try {
			DESKeySpec keySpec = new DESKeySpec(passPhrase.getBytes());
			SecretKey key = SecretKeyFactory.getInstance("DES").generateSecret(keySpec);
			Cipher dcipher = Cipher.getInstance("DES");
			dcipher.init(Cipher.DECRYPT_MODE, key);
			  byte[] dec = Base64Coder.decode(data.toCharArray());

	            // Decrypt
	            byte[] utf8 = dcipher.doFinal(dec);

	            // Decode using utf-8
	            return new String(utf8, "UTF8");
        } catch (javax.crypto.NoSuchPaddingException e) {
        } catch (java.security.NoSuchAlgorithmException e) {
        } catch (java.security.InvalidKeyException e) {
        } catch (javax.crypto.BadPaddingException e) {
        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (java.io.IOException e) {
        } catch (InvalidKeySpecException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return null;
	}
}
