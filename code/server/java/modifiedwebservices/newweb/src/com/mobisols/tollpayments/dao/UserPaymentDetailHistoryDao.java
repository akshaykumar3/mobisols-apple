package com.mobisols.tollpayments.dao;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserPaymentDetailHistoryDao.
 * Used to access the user_payment_detail table of the database.
 */
public interface UserPaymentDetailHistoryDao {
	
	/**
	 * Gets the latest user payment detail history id of the given payment detail id.
	 *
	 * @param paymentDetailId the payment detail id
	 * @return the latest user payment detail history id
	 */
	public int getLatestUserPaymentDetailHistoryId(int paymentDetailId);
}
