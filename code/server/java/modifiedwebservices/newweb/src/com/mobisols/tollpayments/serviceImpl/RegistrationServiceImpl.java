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
import com.mobisols.tollpayments.myutilsImpl.PasswordGeneratorUtil;
import com.mobisols.tollpayments.myutilsImpl.SMSUtil;
import com.mobisols.tollpayments.request.post.RegistrationServiceRequest;
import com.mobisols.tollpayments.response.post.RegistrationResponse;
import com.mobisols.tollpayments.service.RegistrationService;

// TODO: Auto-generated Javadoc
/**
 * The Class RegistrationServiceImpl.
 */
public class RegistrationServiceImpl implements RegistrationService {

	/** The user dao. */
	private UserDao userDao;
	
	/** The device dao. */
	private DeviceDao deviceDao;
	
	/** The user balance dao. */
	private UserBalanceDao userBalanceDao;
	
	/** The user payment detail dao. */
	private UserPaymentDetailDao userPaymentDetailDao;
	
	/** The my util date. */
	private MyUtilDate myUtilDate;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/** The Constant PASSWORD_CORRECT_FALSE. */
	public static final String PASSWORD_CORRECT_FALSE="N";
	
	/** The Constant PASSWORD_CORRECT_TRUE. */
	public static final String PASSWORD_CORRECT_TRUE="Y";
	
	/** The Constant ANOTHER_USER_LOGGED_IN_TRUE. */
	public static final String ANOTHER_USER_LOGGED_IN_TRUE="Y";
	
	/** The Constant ANOTHER_USER_LOGGED_IN_FALSE. */
	public static final String ANOTHER_USER_LOGGED_IN_FALSE="N";
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.RegistrationService#createUser(java.lang.String, com.mobisols.tollpayments.request.post.RegistrationServiceRequest)
	 */
	public String createUser(String request,RegistrationServiceRequest r)
	{
		RegistrationResponse response=new RegistrationResponse();
		String status="success";
		if(!MyValidationUtil.isValidNumber(r.getUserName()))
		{
			response.getNotifications().add("Inavlid Phone number");
			status = "fail";
			return jsonConverter.getJSON(request, status, response);
		}
		User u=userDao.getUser(r.getUserName());
		if(u!=null)
		{
			response.getResponse().put("userNameExists", UserDao.USER_EXISTS);
			Device d= deviceDao.getDevice(r.getDeviceDetails().getDeviceId(), r.getDeviceDetails().getDeviceName());
			if(d==null)
				response.getResponse().put("deviceExists",DeviceDao.DEVICE_NOT_EXISTS);
			else
				response.getResponse().put("deviceExists",DeviceDao.DEVICE_EXISTS);
			return jsonConverter.getJSON(request, status,response);
		}
		else
		{
			response.getResponse().put("userNameExists", UserDao.USER_NOT_EXISTS);
			Device d= deviceDao.getDevice(r.getDeviceDetails().getDeviceId(), r.getDeviceDetails().getDeviceName());
			if(d==null)
				{
					response.getResponse().put("deviceExists",DeviceDao.DEVICE_NOT_EXISTS); 
					return jsonConverter.getJSON(request, status,response);
				}
			else
				response.getResponse().put("deviceExists",DeviceDao.DEVICE_EXISTS);
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
			String s = PasswordGeneratorUtil.generatePassword();
			System.out.println(":::::PASSWORD::::: "+s);
			u.setPassword(s);
			u.setUserName(r.getUserName());
			SMSUtil.sendSMS(u.getUserName(), "Your Password for logging on to Mobile TollPass is "+s);
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
	
	/**
	 * Gets the user dao.
	 *
	 * @return the user dao
	 */
	public UserDao getUserDao() {
		return userDao;
	}
	
	/**
	 * Sets the user dao.
	 *
	 * @param userDao the new user dao
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	/**
	 * Gets the device dao.
	 *
	 * @return the device dao
	 */
	public DeviceDao getDeviceDao() {
		return deviceDao;
	}
	
	/**
	 * Sets the device dao.
	 *
	 * @param deviceDao the new device dao
	 */
	public void setDeviceDao(DeviceDao deviceDao) {
		this.deviceDao = deviceDao;
	}
	
	/**
	 * Gets the my util date.
	 *
	 * @return the my util date
	 */
	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}
	
	/**
	 * Sets the my util date.
	 *
	 * @param myUtilDate the new my util date
	 */
	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}
	
	/**
	 * Gets the user balance dao.
	 *
	 * @return the user balance dao
	 */
	public UserBalanceDao getUserBalanceDao() {
		return userBalanceDao;
	}
	
	/**
	 * Sets the user balance dao.
	 *
	 * @param userBalanceDao the new user balance dao
	 */
	public void setUserBalanceDao(UserBalanceDao userBalanceDao) {
		this.userBalanceDao = userBalanceDao;
	}
	
	/**
	 * Gets the user payment detail dao.
	 *
	 * @return the user payment detail dao
	 */
	public UserPaymentDetailDao getUserPaymentDetailDao() {
		return userPaymentDetailDao;
	}
	
	/**
	 * Sets the user payment detail dao.
	 *
	 * @param userPaymentDetailDao the new user payment detail dao
	 */
	public void setUserPaymentDetailDao(UserPaymentDetailDao userPaymentDetailDao) {
		this.userPaymentDetailDao = userPaymentDetailDao;
	}
	
	/**
	 * Gets the json converter.
	 *
	 * @return the json converter
	 */
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	
	/**
	 * Sets the json converter.
	 *
	 * @param jsonConverter the new json converter
	 */
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
