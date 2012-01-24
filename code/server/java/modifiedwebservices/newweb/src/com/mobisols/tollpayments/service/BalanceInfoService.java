package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserBalanceDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface BalanceInfoService.
 */
public interface BalanceInfoService {

	/** The user balance. */
	UserBalanceDao userBalance=null;
	
	/**
	 * Gets the balance info.
	 *
	 * @param request the request
	 * @param user the user
	 * @return the balance info
	 */
	public String getBalanceInfo(String request,String user);
}
