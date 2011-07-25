package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;
import com.mobisols.tollpayments.response.GeneralResponse;

public interface AddBalanceService extends GeneralService{
	UserDao userDao=null;
	public GeneralResponse postaddBalanceResponse(AddBalanceRequest ar,String username);
}
