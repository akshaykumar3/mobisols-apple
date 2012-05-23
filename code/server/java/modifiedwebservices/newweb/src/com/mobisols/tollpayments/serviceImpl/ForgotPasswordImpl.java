package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutilsImpl.PasswordGeneratorUtil;
import com.mobisols.tollpayments.myutilsImpl.SMSUtil;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.ForgotPassword;

// TODO: Auto-generated Javadoc
/**
 * The Class ForgotPasswordImpl.
 */
public class ForgotPasswordImpl implements ForgotPassword {

	/** The user dao. */
	private UserDao userDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.ForgotPassword#forgotPassword(java.lang.String, java.lang.String)
	 */
	@Override
	public String forgotPassword(String request,String username) {
		String password = PasswordGeneratorUtil.generatePassword();
		User u  =userDao.getUser(username);
		u.setPassword(password);
		System.out.println("::::::CHANGED PASSWORD:::::: "+password);
		SMSUtil.sendSMS(username, "Your new password to logon to Mobile TollPass is"+password);
		GeneralResponse response = new GeneralResponse();
		response.setDescription("password sent to your phone number");
		response.getNotifications().add("password is sent to your phone number");
		return jsonConverter.getJSON(request, "success", response);
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
	 * Gets the user dao.
	 *
	 * @return the user dao
	 */
	public UserDao getUserDao() {
		return userDao;
	}
	
	/**
	 * Sets the json converter.
	 *
	 * @param jsonConverter the new json converter
	 */
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
	
	/**
	 * Gets the json converter.
	 *
	 * @return the json converter
	 */
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

}
