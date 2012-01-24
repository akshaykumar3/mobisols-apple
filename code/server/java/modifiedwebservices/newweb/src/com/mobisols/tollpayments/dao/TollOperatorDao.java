package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.TollOperator;
import com.mobisols.tollpayments.model.User;

// TODO: Auto-generated Javadoc
/**
 * The Interface TollOperatorDao.
 */
public interface TollOperatorDao {
	
	/**
	 * Gets the user.
	 *
	 * @param tollOperatorId the toll operator id
	 * @return the user
	 */
	public User getUser(int tollOperatorId);
	
	/**
	 * Gets the toll operator.
	 *
	 * @param tollOperatorId the toll operator id
	 * @return the toll operator
	 */
	public TollOperator getTollOperator(int tollOperatorId);
}
