package com.mobisols.tollpayments.dao;

import java.sql.Timestamp;
import java.util.List;

import com.mobisols.tollpayments.model.PaymentTransaction;

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
	
	public List<PaymentTransaction> getPaymentTransactions(int userId, Timestamp startDate, Timestamp endDate);
}
