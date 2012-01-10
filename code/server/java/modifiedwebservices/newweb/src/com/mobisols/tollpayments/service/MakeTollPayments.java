package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.request.post.MakeTollPaymentsRequest;


public interface MakeTollPayments {
	public String payForTolls(MakeTollPaymentsRequest r,String request);
}
