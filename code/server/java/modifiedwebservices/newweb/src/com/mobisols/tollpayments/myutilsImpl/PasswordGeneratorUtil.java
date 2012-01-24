package com.mobisols.tollpayments.myutilsImpl;

import java.util.Date;
import java.util.Random;

// TODO: Auto-generated Javadoc
/**
 * The Class PasswordGeneratorUtil.
 */
public class PasswordGeneratorUtil {
	
	/**
	 * Generate password.
	 *
	 * @return the string
	 */
	public static String generatePassword(){
		Random random = new Random();
		random.setSeed(new Date().getTime());
		Integer x = random.nextInt(8999)+1000;
		return x.toString();
	}
}
