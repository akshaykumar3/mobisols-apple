package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;

public interface AddBalanceService {
	UserDao userDao=null;
	public String postaddBalanceResponse(String request,AddBalanceRequest ar,String username);
}
