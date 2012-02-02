package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.request.post.MakeTollPaymentsRequest;


// TODO: Auto-generated Javadoc
/**
 * The Interface MakeTollPayments.
 * Used to make the Toll payments.
 */
public interface MakeTollPayments {
	
	/**
	 * Pays for the tolls that are unpaid. It transfers the balance from user account to the toll operators account.
	 *
	 * @param r the request that is recied as a json parameter for webservice.
	 * @param request the name of webservice request from which the function is called.
	 * @return the json String similar to com.mobisols.tollpaymenst.response.post.MakeTollPaymentsResponse.
	 */
	public String payForTolls(MakeTollPaymentsRequest r,String request);
}
