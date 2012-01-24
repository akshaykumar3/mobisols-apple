package com.mobisols.tollpayments.dao;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserPaymentDetailHistoryDao.
 */
public interface UserPaymentDetailHistoryDao {
	
	/**
	 * Gets the latest user payment detail history id.
	 *
	 * @param paymentDetailId the payment detail id
	 * @return the latest user payment detail history id
	 */
	public int getLatestUserPaymentDetailHistoryId(int paymentDetailId);
}
