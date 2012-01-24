package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.UserBalanceLog;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserBalanceLogDao.
 */
public interface UserBalanceLogDao {
	
	/**
	 * Gets the recent balance log id.
	 *
	 * @param balanceId the balance id
	 * @return the recent balance log id
	 */
	public UserBalanceLog getRecentBalanceLogId(int balanceId);
}
