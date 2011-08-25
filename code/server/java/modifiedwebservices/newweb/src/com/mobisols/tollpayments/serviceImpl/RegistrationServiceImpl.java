package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.RegistrationServiceRequest;
import com.mobisols.tollpayments.response.post.RegistrationResponse;
import com.mobisols.tollpayments.service.RegistrationService;

public class RegistrationServiceImpl implements RegistrationService {

	private UserDao userDao;
	private DeviceDao deviceDao;
	private MyUtilDate myUtilDate;
	
	public RegistrationResponse createUser(RegistrationServiceRequest r)
	{
		RegistrationResponse response=new RegistrationResponse();
		User u=userDao.getUser(r.getUserName());
		if(u!=null)
		{
			response.getResponse().put("userNameExists", "y");
			Device d= deviceDao.getDevice(r.getDeviceDetails().getDeviceId(), r.getDeviceDetails().getDeviceName());
			if(d==null)
				response.getResponse().put("deviceRegistered","n");
			else
				response.getResponse().put("deviceRegistered","y");
			return response;
		}
		else
		{
			response.getResponse().put("userNameExists", "n");
			Device d= deviceDao.getDevice(r.getDeviceDetails().getDeviceId(), r.getDeviceDetails().getDeviceName());
			if(d==null)
				{
					response.getResponse().put("deviceRegistered","n"); 
					return response;
				}
			else
				response.getResponse().put("deviceRegistered","y");
			if(d.getUserId()==-1)
				response.getResponse().put("anotherUserLoggedIn", "n");
			else
			{
				response.getResponse().put("anotherUserLoggedIn", "y");
				d.setUserId(-1);
			}
			
			u=new User();
			u.setClientId(1);
			u.setContactNo(null);
			u.setCreatedOn(myUtilDate.getCurrentTimeStamp());
			u.setIsActive("y");
			u.setLastLoginTime(myUtilDate.getCurrentTimeStamp());
			u.setLastModifiedBy(-1);
			u.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			u.setLocale("");
			u.setPassword(r.getPassword());
			u.setUserName(r.getUserName());
			u.setUtypeId(1);
			
			UserBalance ub= new UserBalance();
			ub.setBalance(0.0);
			ub.setClientId(1);
			ub.setCreatedOn(myUtilDate.getCurrentTimeStamp());
			ub.setLastModifiedBy(-1);
			ub.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			u.setUserBalance(ub);
			
			UserPaymentDetail upd = new UserPaymentDetail();
			upd.setCreatedOn(myUtilDate.getCurrentTimeStamp());
			upd.setClientId(1);
			upd.setLastModifiedBy(-1);
			upd.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			upd.setPayPrefer("c");
			u.setUserPaymentDetails(upd);
			userDao.save(u);
			u=userDao.getUser(r.getUserName());
			d.setUserId(u.getUserId());
			return response;
		}
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public DeviceDao getDeviceDao() {
		return deviceDao;
	}
	public void setDeviceDao(DeviceDao deviceDao) {
		this.deviceDao = deviceDao;
	}
	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}
	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}
}
