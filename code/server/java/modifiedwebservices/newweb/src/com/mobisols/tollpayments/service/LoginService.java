package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.request.post.LoginRequest;
import com.mobisols.tollpayments.response.post.LoginResponse;

public interface LoginService {
	UserDao userDao=null;
	DeviceDao deviceDao=null;
	public LoginResponse login(LoginRequest r);
}
