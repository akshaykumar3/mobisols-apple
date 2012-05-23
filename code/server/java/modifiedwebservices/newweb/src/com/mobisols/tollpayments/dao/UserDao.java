package com.mobisols.tollpayments.dao;

import java.util.List;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserDao.
 * Used to access the data of the user table of the database.
 */
public interface UserDao {
	
	/** The Constant USER_ACTIVE. */
	public static final String USER_ACTIVE = ServerConfiguration.getServerConfiguration().getValue("user_active");
	
	/** The Constant USER_INACTIVE. */
	public static final String USER_INACTIVE = ServerConfiguration.getServerConfiguration().getValue("user_inactive");
	
	/** The Constant USER_INCOMPLETE. */
	public static final String USER_INCOMPLETE = ServerConfiguration.getServerConfiguration().getValue("user_incomplete");
	
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
	 * Gets the user object with the given username.
	 *
	 * @param username the username
	 * @return the user
	 */
	public User getUser(String username);

	/**
	 * Saves the user object to the user table.
	 *
	 * @param u the u
	 */
	public void save(User u);

	/**
	 * Gets the list of all the users.
	 *
	 * @return the user list
	 */
	public List<String> getUserList();
	
	/**
	 * Updates the user object to the database.
	 *
	 * @param u the u
	 */
	public void update(User u);

	/**
	 * Gets the user with the given user id.
	 *
	 * @param parseInt the Id of the user
	 * @return the user
	 */
	public User getUser(int parseInt);
}
