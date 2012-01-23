package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.myutils.JsonConverter;

public interface AccountDetailsService {
	UserDao userDao=null;
	JsonConverter jsonConverter=null;
	public String getAccountDetailsResponse(String request,String username);
}
