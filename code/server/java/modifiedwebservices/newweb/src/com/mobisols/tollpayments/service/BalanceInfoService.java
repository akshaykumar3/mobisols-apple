package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserBalanceDao;

/**
 * The Interface BalanceInfoService.
 * Used to access the balance information of the user.
 */
public interface BalanceInfoService {

	/** The user balance Dao. */
	UserBalanceDao userBalance=null;
	
	/**
	 * Gets the balance info.
	 *
	 * @param request the webservice request from which the function is called. 
	 * @param user the user 
	 * @return the balance info in the json format similar to the object com.mobisols.tollpayments.response.get.BalanceInfoResponse
	 */
	public String getBalanceInfo(String request,String user);
}
