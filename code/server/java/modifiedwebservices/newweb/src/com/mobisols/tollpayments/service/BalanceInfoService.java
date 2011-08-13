package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.response.get.BalanceInfoResponse;

public interface BalanceInfoService {

	UserBalanceDao userBalance=null;
	
	public BalanceInfoResponse getBalanceInfo(String user);
}
