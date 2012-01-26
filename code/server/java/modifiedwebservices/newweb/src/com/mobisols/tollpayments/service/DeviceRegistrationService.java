package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.DeviceRegistrationRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface DeviceRegistrationService.
 */
public interface DeviceRegistrationService {
	
	/** The device dao. */
	DeviceDao deviceDao=null;
	
	/** The mydate util. */
	MyUtilDate mydateUtil=null;
	
	/**
	 * Register device.
	 *
	 * @param request the request
	 * @param r the r
	 * @param ipAddress the ip address
	 * @return the string
	 */
	public String registerDevice(String request,DeviceRegistrationRequest r, String ipAddress);
}
