package com.mobisols.tollpayments.myutilsImpl;


// TODO: Auto-generated Javadoc
/**
 * The Class MyValidationUtil.
 */
public class MyValidationUtil {

	/**
	 * Checks if is valid email.
	 *
	 * @param email the email
	 * @return true, if is valid email
	 */
	public static boolean isValidEmail(String email){
		String regExpr = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
		return email.matches(regExpr);
	}
	
	/**
	 * Checks if is valid cc.
	 *
	 * @param number the number
	 * @return true, if is valid cc
	 */
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

	/**
	 * Checks if is valid number.
	 *
	 * @param userName the user name
	 * @return true, if is valid number
	 */
	public static boolean isValidNumber(String userName) {
		//TODO check whether it is valid number or not.
		return true;
	}
}
