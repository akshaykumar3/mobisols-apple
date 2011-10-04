package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.ChangePasswordService;

public class ChangePasswordServiceImpl implements ChangePasswordService {

	UserDao userDao;
	public GeneralResponse changePassword(String userName,String password){
		GeneralResponse response = new GeneralResponse();
		User u= userDao.getUser(userName);
		u.setPassword(password);
		userDao.update(u);
		return response;
		
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
