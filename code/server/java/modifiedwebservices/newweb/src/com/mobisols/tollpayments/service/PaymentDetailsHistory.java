/**
 * 
 */
package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.request.admin.PaymentDetailsHistoryRequest;

/**
 * @author Raghu
 *
 */
public interface PaymentDetailsHistory {

	public String getPaymentDetailsHistory(String request,PaymentDetailsHistoryRequest pdr);
}
