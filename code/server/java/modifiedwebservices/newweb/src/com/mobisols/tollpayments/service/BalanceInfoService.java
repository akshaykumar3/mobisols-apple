package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserBalanceDao;

public interface BalanceInfoService {

	UserBalanceDao userBalance=null;
	public String getBalanceInfo(String request,String user);
}
