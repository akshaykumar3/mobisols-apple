package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.PaymentTransaction;

// TODO: Auto-generated Javadoc
/**
 * The Interface PaymentTransactionDao.
 * Used to access the data of the payment_transaction table of the database.
 */
public interface PaymentTransactionDao {
	
	/**
	 * Saves the given payment transaction to the database.
	 *
	 * @param paymentTransaction the payment transaction
	 */
	public void save(PaymentTransaction paymentTransaction);
}
