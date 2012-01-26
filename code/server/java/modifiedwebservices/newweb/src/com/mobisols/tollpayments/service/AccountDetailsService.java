package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.myutils.JsonConverter;

// TODO: Auto-generated Javadoc
/**
 * The Interface AccountDetailsService.
 */
public interface AccountDetailsService {
	
	/** The user dao. */
	UserDao userDao=null;
	
	/** The json converter. */
	JsonConverter jsonConverter=null;
	
	/**
	 * Gets the account details response.
	 *
	 * @param request the request
	 * @param username the username
	 * @return the account details response
	 */
	public String getAccountDetailsResponse(String request,String username);
}
