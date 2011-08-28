package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.User;

public interface UserDao {
	public User getUser(String username);

	public void save(User u);

	public List<String> getUserList();
}
