package com.mobisols.tollpayments.myutilsImpl;

import java.util.Date;
import java.util.Random;

public class PasswordGeneratorUtil {
	
	public static String generatePassword(){
		Random random = new Random();
		random.setSeed(new Date().getTime());
		Integer x = random.nextInt(8999)+1000;
		return x.toString();
	}
}
