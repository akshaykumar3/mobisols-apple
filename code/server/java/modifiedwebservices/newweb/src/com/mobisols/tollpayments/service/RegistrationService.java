package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.RegistrationServiceRequest;
import com.mobisols.tollpayments.response.post.RegistrationResponse;

public interface RegistrationService {
	UserDao userDao=null;
	DeviceDao deviceDao=null;
	MyUtilDate myUtilDate=null;
	public RegistrationResponse createUser(RegistrationServiceRequest r);
}
