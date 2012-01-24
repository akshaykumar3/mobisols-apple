package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.RegistrationServiceRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface RegistrationService.
 */
public interface RegistrationService {
	
	/** The user dao. */
	UserDao userDao=null;
	
	/** The device dao. */
	DeviceDao deviceDao=null;
	
	/** The my util date. */
	MyUtilDate myUtilDate=null;
	
	/**
	 * Creates the user.
	 *
	 * @param request the request
	 * @param r the r
	 * @return the string
	 */
	public String createUser(String request,RegistrationServiceRequest r);
}
