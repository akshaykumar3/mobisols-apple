package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.TollOperator;
import com.mobisols.tollpayments.model.User;

/**
 * The Interface TollOperatorDao.
 * Used to access the data of the toll_operator table from the database.
 */
public interface TollOperatorDao {
	
	/**
	 * Gets the user whose is the given toll operator.
	 *
	 * @param tollOperatorId the toll operator id
	 * @return the user
	 */
	public User getUser(int tollOperatorId);
	
	/**
	 * Gets the toll operator whose id is given.
	 *
	 * @param tollOperatorId the toll operator id
	 * @return the toll operator
	 */
	public TollOperator getTollOperator(int tollOperatorId);
}
