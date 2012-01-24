package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.User;

// TODO: Auto-generated Javadoc
/**
 * The Interface AccountDetailsDao.
 */
public interface AccountDetailsDao {

	/**
	 * Gets the account details.
	 *
	 * @param userId the user id
	 * @return the account details
	 */
	public User getAccountDetails(String userId);
}
