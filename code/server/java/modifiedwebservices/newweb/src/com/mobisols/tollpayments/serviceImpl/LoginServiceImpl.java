package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.post.LoginRequest;
import com.mobisols.tollpayments.response.post.LoginResponse;
import com.mobisols.tollpayments.service.LoginService;

// TODO: Auto-generated Javadoc
/**
 * The Class LoginServiceImpl.
 */
public class LoginServiceImpl implements LoginService {

	/** The user dao. */
	private UserDao userDao;
	
	/** The device dao. */
	private DeviceDao deviceDao;
	
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
	 * @see com.mobisols.tollpayments.service.LoginService#login(java.lang.String, com.mobisols.tollpayments.request.post.LoginRequest)
	 */
	public String login(String request,LoginRequest r)
	{
		LoginResponse response =new LoginResponse();
		String status="success";
		User u=userDao.getUser(r.getUserName());
		if(u==null)
		{
			status = "fail";
			response.getResponse().put("userExists", UserDao.USER_NOT_EXISTS);
			return jsonConverter.getJSON(request, status,response);
		}
		else
		{
			response.getResponse().put("userExists",UserDao.USER_EXISTS);
			System.out.println(r.getPassword());
			System.out.println(u.getPassword());
			if(u.getPassword().equals(r.getPassword()))
			{
				response.getResponse().put("passwordCorrect", PASSWORD_CORRECT_TRUE);
				response.getResponse().put("isActive", u.getIsActive());
				Device d=deviceDao.getDevice(r.getDeviceDetails().getDeviceId(),r.getDeviceDetails().getDeviceName());
				if(d==null)
				{
					response.getResponse().put("deviceExists", DeviceDao.DEVICE_NOT_EXISTS);
					response.getCommands().add("DoDeviceRegistration");
					return jsonConverter.getJSON(request, status,response);
				}
				response.getResponse().put("deviceExists", DeviceDao.DEVICE_EXISTS);
				if(d.getUserId()==-1)
				{
					response.getResponse().put("anotherUserLoggedIn", ANOTHER_USER_LOGGED_IN_FALSE);
				}
				else
				{
					response.getResponse().put("anotherUserLoggedIn", ANOTHER_USER_LOGGED_IN_TRUE);
				}
				d.setUserId(u.getUserId());
				deviceDao.update(d);
			}
			else
			{
				response.getResponse().put("passwordCorrect", PASSWORD_CORRECT_FALSE);
			}
		}
		String responseString = jsonConverter.getJSON(request, status,response);
		System.out.println(responseString);
		return responseString;
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
