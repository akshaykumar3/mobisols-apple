package com.mobisols.tollpayments.serviceImpl;


import java.util.Iterator;
import java.util.Set;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserBalanceLog;
import com.mobisols.tollpayments.response.get.BalanceInfoResponse;
import com.mobisols.tollpayments.response.get.BalanceLog;
import com.mobisols.tollpayments.service.BalanceInfoService;

public class BalanceInfoServiceImpl implements BalanceInfoService {

	private UserDao userDao;
	
	
	public BalanceInfoResponse getBalanceInfo(String user) {
		BalanceInfoResponse response=new BalanceInfoResponse();
		User u=userDao.getUser(user);
		response.setCurrentBalance((u.getUserBalance().getBalance()));
		response.setBalanceId(u.getUserBalance().getUbalId());
		response.setMinBalance(u.getUserType().getMinBalance());
		Set<com.mobisols.tollpayments.model.UserBalanceLog> ubl=u.getUserBalance().getUserBalanceLog();
		for(Iterator it=(Iterator) ubl.iterator();it.hasNext();){
			UserBalanceLog ubl1=(UserBalanceLog) it.next();
			BalanceLog bl=new BalanceLog();
			bl.setDelta(ubl1.getDelta());
			bl.setDescription(ubl1.getAction());
			bl.setTimeStamp(ubl1.getTimestamp());
			response.getBalancelog().add(bl);
		}
		return response;
	}

	public void setUserDao(UserDao user) {
		this.userDao = user;
	}

	public UserDao getUserDao() {
		return userDao;
	}

}
