/**
 * 
 */
package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.request.admin.PaymentTransactionRequest;

/**
 * @author Raghu
 *
 */
public interface PaymentTransactionService {

	public String getPaymentTransactions(String request,PaymentTransactionRequest ptr);
}
