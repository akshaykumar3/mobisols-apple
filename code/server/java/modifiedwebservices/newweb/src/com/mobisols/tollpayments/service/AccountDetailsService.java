package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.response.get.AccountDetailsResponse;

public interface AccountDetailsService extends GeneralService {
	UserDao userDao=null;
	public AccountDetailsResponse getAccountDetailsResponse(String username);
}
