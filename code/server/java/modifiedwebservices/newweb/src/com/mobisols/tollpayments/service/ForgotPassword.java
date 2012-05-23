package com.mobisols.tollpayments.service;

// TODO: Auto-generated Javadoc
/**
 * The Interface ForgotPassword.
 * Used to send a new password to the user if he forgets password.
 */
public interface ForgotPassword {
	
	/**
	 * Sends new password to the user if he forgets the password.
	 *
	 * @param request the webservice request from the function is called.
	 * @param username the username
	 * @return the json string which tells wether the password was sent successfully or not.
	 */
	public String forgotPassword(String request,String username);
}
