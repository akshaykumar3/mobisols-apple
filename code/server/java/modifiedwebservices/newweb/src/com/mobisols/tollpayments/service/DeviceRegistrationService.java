package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.DeviceRegistrationRequest;

public interface DeviceRegistrationService {
	DeviceDao deviceDao=null;
	MyUtilDate mydateUtil=null;
	public String registerDevice(String request,DeviceRegistrationRequest r, String ipAddress);
}
