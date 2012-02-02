package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.UserBalance;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserBalanceDao.
 * Used to access the user_balance_dao table of the database.
 * 
 */
public interface UserBalanceDao {
	
	/**
	 * Gets the balance of the user with the given user name.
	 *
	 * @param username the username
	 * @return the user balance
	 */
	public UserBalance getUserBalance(String username);
	
	/**
	 * Saves the UserBalance object to the database.
	 *
	 * @param u the u
	 */
	public void save(UserBalance u);
	
}
