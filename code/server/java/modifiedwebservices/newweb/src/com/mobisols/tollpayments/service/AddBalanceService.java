package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;

/**
 * The Interface AddBalanceService.
 * Used to add balance to the user account
 */
public interface AddBalanceService {
	
	/** The user dao. */
	UserDao userDao=null;
	
	/**
	 * adds balance response.
	 *
	 * @param request the webservice request from which the function is called.
	 * @param ar the AddRequest object that is received as a json request parameter.
	 * @param username the username
	 * @return the json string which is similar to  com.mobisols.tollpayments.response.GeneralResponse.
	 */
	public String addBalanceResponse(String request,AddBalanceRequest ar,String username);
}
