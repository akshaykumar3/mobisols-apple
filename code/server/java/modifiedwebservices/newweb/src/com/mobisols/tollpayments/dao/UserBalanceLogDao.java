package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.UserBalanceLog;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserBalanceLogDao.
 * Used to access data of the user_balance_log table of the database.
 */
public interface UserBalanceLogDao {
	
	/**
	 * Gets the recent balance log id of the balance with the given Id.
	 *
	 * @param balanceId the balance id
	 * @return the recent balance log id
	 */
	public UserBalanceLog getRecentBalanceLogId(int balanceId);
}
