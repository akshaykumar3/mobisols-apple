package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.RegistrationServiceRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface RegistrationService.
 * Used to register a User.
 */
public interface RegistrationService {
	
	/** The user dao. */
	UserDao userDao=null;
	
	/** The device dao. */
	DeviceDao deviceDao=null;
	
	/** The my util date. */
	MyUtilDate myUtilDate=null;
	
	/**
	 * Creates the new user account with the recieved details..
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @param r the Request received as json request parameter. 
	 * @return the json string similar to com.mobisols.tollpayments.response.RegistrationServiceResponse.
	 */
	public String createUser(String request,RegistrationServiceRequest r);
}
