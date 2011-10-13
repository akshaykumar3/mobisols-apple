package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.ChangePasswordService;

public class ChangePasswordServiceImpl implements ChangePasswordService {

	UserDao userDao;
	private JsonConverter jsonConverter;
	
	public String changePassword(String request,String userName,String password){
		GeneralResponse response = new GeneralResponse();
		String status="";
		User u= userDao.getUser(userName);
		u.setPassword(password);
		userDao.update(u);
		return jsonConverter.getJSON(request, status,response);
		
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
