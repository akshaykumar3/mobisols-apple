package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.DeviceRegistrationRequest;
import com.mobisols.tollpayments.response.post.DeviceRegistrationResponse;

public interface DeviceRegistrationService {
	DeviceDao deviceDao=null;
	MyUtilDate mydateUtil=null;

	public DeviceRegistrationResponse registerDevice(DeviceRegistrationRequest r);
}
