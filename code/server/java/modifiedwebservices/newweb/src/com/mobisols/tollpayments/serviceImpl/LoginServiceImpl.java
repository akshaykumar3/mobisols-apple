package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.request.post.LoginRequest;
import com.mobisols.tollpayments.response.post.LoginResponse;
import com.mobisols.tollpayments.service.LoginService;

public class LoginServiceImpl implements LoginService {

	private UserDao userDao;
	private DeviceDao deviceDao;
	
	public LoginResponse login(LoginRequest r)
	{
		LoginResponse response =new LoginResponse();
		User u=userDao.getUser(r.getUserName());
		if(u==null)
		{
			response.getResponse().put("userExists", "n");
			return response;
		}
		else
		{
			response.getResponse().put("userExists","y");
			if(u.getPassword()!=r.getPassword())
			{
				response.getResponse().put("passwordCorrect", "n");
			}
			else
			{
				response.getResponse().put("passwordCorrect", "y");
				Device d=deviceDao.getDevice(r.getDeviceDetails().getDeviceId(),r.getDeviceDetails().getDeviceName());
				if(d==null)
				{
					response.getResponse().put("deviceExists", "n");
					return response;
				}
				response.getResponse().put("deviceExists", "y");
				if(d.getUserId()==-1)
				{
					response.getResponse().put("anotherUserLoggedIn", "n");
				}
				else
				{
					response.getResponse().put("anotherUserLoggedIn", "y");
				}
				d.setUserId(u.getUserId());
			}
		}
		return response;
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
}
