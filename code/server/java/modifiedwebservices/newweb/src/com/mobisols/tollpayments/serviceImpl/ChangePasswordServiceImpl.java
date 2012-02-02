package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.ChangePasswordService;

/**
 * The Class ChangePasswordServiceImpl.
 */
public class ChangePasswordServiceImpl implements ChangePasswordService {

	/** The user dao. */
	UserDao userDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.ChangePasswordService#changePassword(java.lang.String, java.lang.String, java.lang.String)
	 */
	public String changePassword(String request,String userName,String password){
		GeneralResponse response = new GeneralResponse();
		String status="success";
		User u= userDao.getUser(userName);
		u.setPassword(password);
		userDao.update(u);
		response.getNotifications().add("Password Changed");
		return jsonConverter.getJSON(request, status,response);
		
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
