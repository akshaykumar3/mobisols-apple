package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutilsImpl.PasswordGeneratorUtil;
import com.mobisols.tollpayments.myutilsImpl.SMSUtil;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.ForgotPassword;

public class ForgotPasswordImpl implements ForgotPassword {

	private UserDao userDao;
	private JsonConverter jsonConverter;
	
	@Override
	public String forgotPassword(String request,String username) {
		String password = PasswordGeneratorUtil.generatePassword();
		User u  =userDao.getUser(username);
		u.setPassword(password);
		System.out.println("::::::CHANGED PASSWORD:::::: "+password);
		//SMSUtil.sendSMS(username, password);
		GeneralResponse response = new GeneralResponse();
		response.setDescription("password sent to your phone number");
		response.getNotifications().add("password is sent to your phone number");
		return jsonConverter.getJSON(request, "success", response);
	}
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

}
