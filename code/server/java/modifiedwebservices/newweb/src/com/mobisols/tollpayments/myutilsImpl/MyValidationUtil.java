package com.mobisols.tollpayments.myutilsImpl;


public class MyValidationUtil {

	public static boolean isValidEmail(String email){
		String regExpr = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		return email.matches(regExpr);
	}
	
	public static boolean isValidCC(String number) {
		 
		int sum = 0; boolean evenPosition=false;
        for (int i = number.length() - 1; i >= 0; i--) {
            int n = Integer.parseInt(number.substring(i, i + 1));
            if (evenPosition) {
                n *= 2;
                if (n > 9) {
                    n = (n % 10) + 1;
                }
            }
            sum += n;
            evenPosition = !evenPosition;
        }

        return sum%10 == 0;
	  }

	public static boolean isValidNumber(String userName) {
		//TODO check whether it is valid number or not.
		return true;
	}
}
