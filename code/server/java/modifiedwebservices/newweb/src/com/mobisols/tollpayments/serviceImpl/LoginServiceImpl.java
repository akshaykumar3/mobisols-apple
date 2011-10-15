package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.post.LoginRequest;
import com.mobisols.tollpayments.response.post.LoginResponse;
import com.mobisols.tollpayments.service.LoginService;

public class LoginServiceImpl implements LoginService {

	private UserDao userDao;
	private DeviceDao deviceDao;
	private JsonConverter jsonConverter;
	
	public static final String PASSWORD_CORRECT_FALSE="N";
	public static final String PASSWORD_CORRECT_TRUE="Y";
	
	public static final String ANOTHER_USER_LOGGED_IN_TRUE="Y";
	public static final String ANOTHER_USER_LOGGED_IN_FALSE="N";
	
	public String login(String request,LoginRequest r)
	{
		LoginResponse response =new LoginResponse();
		String status="success";
		User u=userDao.getUser(r.getUserName());
		if(u==null)
		{
			response.getResponse().put("userExists", User.USER_NOT_EXISTS);
			return jsonConverter.getJSON(request, status,response);
		}
		else
		{
			response.getResponse().put("userExists",User.USER_EXISTS);
			status = "fail";
			if(u.getPassword().equals(r.getPassword()))
			{
				
				response.getResponse().put("passwordCorrect", PASSWORD_CORRECT_TRUE);
				Device d=deviceDao.getDevice(r.getDeviceDetails().getDeviceId(),r.getDeviceDetails().getDeviceName());
				if(d==null)
				{
					response.getResponse().put("deviceExists", Device.DEVICE_NOT_EXISTS);
					return jsonConverter.getJSON(request, status,response);
				}
				response.getResponse().put("deviceExists", Device.DEVICE_EXISTS);
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
		return jsonConverter.getJSON(request, status,response);
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

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
