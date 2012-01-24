package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.request.post.MakeTollPaymentsRequest;


// TODO: Auto-generated Javadoc
/**
 * The Interface MakeTollPayments.
 */
public interface MakeTollPayments {
	
	/**
	 * Pay for tolls.
	 *
	 * @param r the r
	 * @param request the request
	 * @return the string
	 */
	public String payForTolls(MakeTollPaymentsRequest r,String request);
}
