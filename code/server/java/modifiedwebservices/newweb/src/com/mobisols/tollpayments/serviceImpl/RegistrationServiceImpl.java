package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutilsImpl.MyValidationUtil;
import com.mobisols.tollpayments.request.post.RegistrationServiceRequest;
import com.mobisols.tollpayments.response.post.RegistrationResponse;
import com.mobisols.tollpayments.service.RegistrationService;

public class RegistrationServiceImpl implements RegistrationService {

	private UserDao userDao;
	private DeviceDao deviceDao;
	private UserBalanceDao userBalanceDao;
	private UserPaymentDetailDao userPaymentDetailDao;
	private MyUtilDate myUtilDate;
	private JsonConverter jsonConverter;
	
	public static final String PASSWORD_CORRECT_FALSE="N";
	public static final String PASSWORD_CORRECT_TRUE="Y";
	
	public static final String ANOTHER_USER_LOGGED_IN_TRUE="Y";
	public static final String ANOTHER_USER_LOGGED_IN_FALSE="N";
	
	public String createUser(String request,RegistrationServiceRequest r)
	{
		RegistrationResponse response=new RegistrationResponse();
		String status="success";
		if(!MyValidationUtil.isValidEmail(r.getUserName()))
		{
			response.getNotifications().add("Inavlid email");
			status = "fail";
			return jsonConverter.getJSON(request, status, response);
		}
		User u=userDao.getUser(r.getUserName());
		if(u!=null)
		{
			response.getResponse().put("userNameExists", User.USER_EXISTS);
			Device d= deviceDao.getDevice(r.getDeviceDetails().getDeviceId(), r.getDeviceDetails().getDeviceName());
			if(d==null)
				response.getResponse().put("deviceExists",Device.DEVICE_NOT_EXISTS);
			else
				response.getResponse().put("deviceExists",Device.DEVICE_EXISTS);
			return jsonConverter.getJSON(request, status,response);
		}
		else
		{
			response.getResponse().put("userNameExists", User.USER_NOT_EXISTS);
			Device d= deviceDao.getDevice(r.getDeviceDetails().getDeviceId(), r.getDeviceDetails().getDeviceName());
			if(d==null)
				{
					response.getResponse().put("deviceExists",Device.DEVICE_NOT_EXISTS); 
					return jsonConverter.getJSON(request, status,response);
				}
			else
				response.getResponse().put("deviceExists",Device.DEVICE_EXISTS);
			if(d.getUserId()==-1)
				response.getResponse().put("anotherUserLoggedIn", ANOTHER_USER_LOGGED_IN_FALSE);
			else
			{
				response.getResponse().put("anotherUserLoggedIn", ANOTHER_USER_LOGGED_IN_TRUE);
				d.setUserId(-1);
			}
			
			u=new User();
			u.setClientId(Client.PRESENT_CLIENT);
			u.setContactNo(null);
			u.setCreatedOn(myUtilDate.getCurrentTimeStamp());
			u.setIsActive(UserDao.USER_INCOMPLETE);
			u.setLastLoginTime(myUtilDate.getCurrentTimeStamp());
			u.setLastModifiedBy(-1);
			u.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			u.setLocale("");
			u.setPassword(r.getPassword());
			u.setUserName(r.getUserName());
			//TODO change user type id based on the data in the database
			u.setUtypeId(1);
			userDao.save(u);
			
			u=userDao.getUser(r.getUserName());
			
			UserBalance ub= new UserBalance();
			ub.setBalance(0.0);
			ub.setClientId(1);
			ub.setCreatedOn(myUtilDate.getCurrentTimeStamp());
			ub.setLastModifiedBy(-1);
			ub.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			ub.setUserId(u.getUserId());
			userBalanceDao.save(ub);
			
			UserPaymentDetail upd = new UserPaymentDetail();
			upd.setCreatedOn(myUtilDate.getCurrentTimeStamp());
			upd.setClientId(1);
			upd.setLastModifiedBy(-1);
			upd.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			upd.setPayPrefer("c");
			upd.setUserId(u.getUserId());
			userPaymentDetailDao.save(upd);
			
			d.setUserId(u.getUserId());
			deviceDao.save(d);
			return jsonConverter.getJSON(request, status,response);
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
	public UserBalanceDao getUserBalanceDao() {
		return userBalanceDao;
	}
	public void setUserBalanceDao(UserBalanceDao userBalanceDao) {
		this.userBalanceDao = userBalanceDao;
	}
	public UserPaymentDetailDao getUserPaymentDetailDao() {
		return userPaymentDetailDao;
	}
	public void setUserPaymentDetailDao(UserPaymentDetailDao userPaymentDetailDao) {
		this.userPaymentDetailDao = userPaymentDetailDao;
	}
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
