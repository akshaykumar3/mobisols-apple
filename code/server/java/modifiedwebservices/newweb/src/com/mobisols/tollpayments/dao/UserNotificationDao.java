/**
 * 
 */
package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.UserNotification;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

/**
 * @author Raghu
 *
 */
public interface UserNotificationDao {

	public static String NOTIFICATION_PENDING = ServerConfiguration.getServerConfiguration().getValue("notification_pending") ;
	public static String NOTIFICATION_SUCCESS = ServerConfiguration.getServerConfiguration().getValue("notification_success");
	public static String COMMAND_PROGRESS = ServerConfiguration.getServerConfiguration().getValue("command_progress");
	public static String COMMAND_FAILURE = ServerConfiguration.getServerConfiguration().getValue("command_failure");
	public static String COMMAND_PENDING = ServerConfiguration.getServerConfiguration().getValue("command_pending");
	public static String COMMAND_SUCCESS = ServerConfiguration.getServerConfiguration().getValue("ccommand_success");
	
	public static String USER_COMMAND = ServerConfiguration.getServerConfiguration().getValue("user_notification_type_command");
	public static String USER_NOTIFICATION = ServerConfiguration.getServerConfiguration().getValue("user_notification_type_notification");
	
	public List<UserNotification> getPendingCommands(String deviceId);
	public List<UserNotification> getPendingNotifications(String deviceId);
	public void save(UserNotification userNotification);
	public void update(UserNotification userNotification);
	public UserNotification get(Integer notificationId);
}
