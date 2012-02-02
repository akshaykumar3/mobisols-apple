package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.myutils.JsonConverter;

/**
 * The Interface AccountDetailsService.
 * Used to send he response for the request related to account details. 
 */
public interface AccountDetailsService {
	
	/** The user dao. Used to access the user table of the database */
	UserDao userDao=null;
	
	/** The json converter. Used to convret the response object into json string. */
	JsonConverter jsonConverter=null;
	
	/**
	 * Gets the account details response of the given user.
	 *
	 * @param request the web service request from which the function is called.
	 * @param username the username
	 * @return the account details response
	 */
	public String getAccountDetailsResponse(String request,String username);
}
