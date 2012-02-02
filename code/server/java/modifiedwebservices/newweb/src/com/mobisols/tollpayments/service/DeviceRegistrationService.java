package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.DeviceRegistrationRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface DeviceRegistrationService.
 * Used to register a device.
 */
public interface DeviceRegistrationService {
	
	/** The device dao. */
	DeviceDao deviceDao=null;
	
	/** The mydate util. */
	MyUtilDate mydateUtil=null;
	
	/**
	 * Registers device .
	 *
	 * @param request the webservice request from which the function is called.
	 * @param r the Device Registration Request object that is received as a json request parameter.
	 * @param ipAddress the ip address from which the request is recieved.
	 * @return the string
	 */
	public String registerDevice(String request,DeviceRegistrationRequest r, String ipAddress);
}
