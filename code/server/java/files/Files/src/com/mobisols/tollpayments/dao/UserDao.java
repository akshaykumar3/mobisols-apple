package com.mobisols.tollpayments.dao;

import java.util.List;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

public interface UserDao {
	public static final String USER_ACTIVE = ServerConfiguration.getServerConfiguration().getValue("user_active");
	public static final String USER_INACTIVE = ServerConfiguration.getServerConfiguration().getValue("user_inactive");
	public static final String USER_INCOMPLETE = ServerConfiguration.getServerConfiguration().getValue("user_Incomplete");
	public static final String USER_SUSPEND = ServerConfiguration.getServerConfiguration().getValue("user_suspend");
	public static final String USER_BLOCK = ServerConfiguration.getServerConfiguration().getValue("user_block");
	public static final int DEFAULT_USER=Integer.parseInt(ServerConfiguration.getServerConfiguration().getValue("default_user"));
	public static final String USER_EXISTS=ServerConfiguration.getServerConfiguration().getValue("user_exists");
	public static final String USER_NOT_EXISTS=ServerConfiguration.getServerConfiguration().getValue("user_not_exists");

	public User getUser(String username);

	public void save(User u);

	public List<String> getUserList();
	
	public void update(User u);

	public User getUser(int parseInt);
}
