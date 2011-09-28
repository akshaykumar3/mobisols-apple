package com.mobisols.tollpayments.myutilsImpl;

import com.mobisols.tollpayments.myutils.MyUtilCreditCard;

public class MyUtilCreditCardImpl implements MyUtilCreditCard {

	public static boolean isValidCC(String number) {
		 
	    final int[][] sumTable = {{0,1,2,3,4,5,6,7,8,9},{0,2,4,6,8,1,3,5,7,9}};
	    int sum = 0, flip = 0;
	 
	    for (int i = number.length() - 1; i >= 0; i--) {
	      sum += sumTable[flip++ & 0x1][Character.digit(number.charAt(i), 10)];
	    }
	    return sum % 10 == 0;
	  }
}
