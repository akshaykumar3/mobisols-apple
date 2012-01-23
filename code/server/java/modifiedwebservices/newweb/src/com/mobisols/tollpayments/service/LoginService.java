package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.request.post.LoginRequest;

public interface LoginService {
	UserDao userDao=null;
	DeviceDao deviceDao=null;
	
	public String login(String request,LoginRequest r);
}
