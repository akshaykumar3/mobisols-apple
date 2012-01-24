package com.mobisols.tollpayments.dao;

import java.util.List;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserDao.
 */
public interface UserDao {
	
	/** The Constant USER_ACTIVE. */
	public static final String USER_ACTIVE = ServerConfiguration.getServerConfiguration().getValue("user_active");
	
	/** The Constant USER_INACTIVE. */
	public static final String USER_INACTIVE = ServerConfiguration.getServerConfiguration().getValue("user_inactive");
	
	/** The Constant USER_INCOMPLETE. */
	public static final String USER_INCOMPLETE = ServerConfiguration.getServerConfiguration().getValue("user_Incomplete");
	
	/** The Constant USER_SUSPEND. */
	public static final String USER_SUSPEND = ServerConfiguration.getServerConfiguration().getValue("user_suspend");
	
	/** The Constant USER_BLOCK. */
	public static final String USER_BLOCK = ServerConfiguration.getServerConfiguration().getValue("user_block");
	
	/** The Constant DEFAULT_USER. */
	public static final int DEFAULT_USER=Integer.parseInt(ServerConfiguration.getServerConfiguration().getValue("default_user"));
	
	/** The Constant USER_EXISTS. */
	public static final String USER_EXISTS=ServerConfiguration.getServerConfiguration().getValue("user_exists");
	
	/** The Constant USER_NOT_EXISTS. */
	public static final String USER_NOT_EXISTS=ServerConfiguration.getServerConfiguration().getValue("user_not_exists");

	/**
	 * Gets the user.
	 *
	 * @param username the username
	 * @return the user
	 */
	public User getUser(String username);

	/**
	 * Save.
	 *
	 * @param u the u
	 */
	public void save(User u);

	/**
	 * Gets the user list.
	 *
	 * @return the user list
	 */
	public List<String> getUserList();
	
	/**
	 * Update.
	 *
	 * @param u the u
	 */
	public void update(User u);

	/**
	 * Gets the user.
	 *
	 * @param parseInt the parse int
	 * @return the user
	 */
	public User getUser(int parseInt);
}
