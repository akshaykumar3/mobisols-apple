package com.mobisols.tollpayments.service;



/**
 * The Interface ChangePasswordService.
 * Used to Change the password of the user.
 */
public interface ChangePasswordService {
	
	/**
	 * Changes the password of the user to the requested password.
	 *
	 * @param request name of the webservice request from which the function is called.
	 * @param userName the user name
	 * @param password the new password of the user.
	 * @return the json format of the response similar to object com.mobisols.tollpayments.response.GeneralResponse.
	 */
	public String changePassword(String request,String userName,String password);
}
