/**
 * 
 */
package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.request.admin.TollTransactionRequest;

/**
 * @author Raghu
 *
 */
public interface TollTransactionsService{

	public String getTollTransactions(String request,TollTransactionRequest ttr);
}
