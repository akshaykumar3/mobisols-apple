package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.UserBalance;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserBalanceDao.
 */
public interface UserBalanceDao {
	
	/**
	 * Gets the user balance.
	 *
	 * @param username the username
	 * @return the user balance
	 */
	public UserBalance getUserBalance(String username);
	
	/**
	 * Save.
	 *
	 * @param u the u
	 */
	public void save(UserBalance u);
}
