package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.UserPaymentDetail;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserPaymentDetailDao.
 * Used to access the data from user_payment_detail table.
 */
public interface UserPaymentDetailDao {
	
	/**
	 * Saves the User payment detail to the database.
	 *
	 * @param upd the upd
	 */
	public void save(UserPaymentDetail upd);
	
	/**
	 * Updates the user payment detail to the database.
	 *
	 * @param upd the upd
	 */
	public void update(UserPaymentDetail upd);
	
}
