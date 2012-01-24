package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.request.post.LoginRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface LoginService.
 */
public interface LoginService {
	
	/** The user dao. */
	UserDao userDao=null;
	
	/** The device dao. */
	DeviceDao deviceDao=null;
	
	/**
	 * Login.
	 *
	 * @param request the request
	 * @param r the r
	 * @return the string
	 */
	public String login(String request,LoginRequest r);
}
