package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface AddBalanceService.
 */
public interface AddBalanceService {
	
	/** The user dao. */
	UserDao userDao=null;
	
	/**
	 * Postadd balance response.
	 *
	 * @param request the request
	 * @param ar the ar
	 * @param username the username
	 * @return the string
	 */
	public String postaddBalanceResponse(String request,AddBalanceRequest ar,String username);
}
