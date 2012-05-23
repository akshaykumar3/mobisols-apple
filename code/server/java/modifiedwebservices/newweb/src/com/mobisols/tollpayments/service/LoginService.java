package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.request.post.LoginRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface LoginService.
 * Used to login .
 */
public interface LoginService {
	
	/** The user dao. */
	UserDao userDao=null;
	
	/** The device dao. */
	DeviceDao deviceDao=null;
	
	/**
	 * Checks the username and password of the user and returns the reposne according to it.
	 *
	 * @param request the name of webservice request from which the function is called.
 	 * @param r the Login rquest object that is received as json request parameter.
	 * @return the json String similar to the object com.mobisols.tollpayments.response.post.LoginResponse.
	 */
	public String login(String request,LoginRequest r);
}
