package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.User;

public interface UserDao {
	public static final String USER_ACTIVE = "Y";
	public static final String USER_INACTIVE = "N";
	public static final String USER_INCOMPLETE = "I";
	public static final String USER_SUSPEND = "S";
	public static final String USER_BLOCK = "B";
	
	public User getUser(String username);

	public void save(User u);

	public List<String> getUserList();
	
	public void update(User u);
}
