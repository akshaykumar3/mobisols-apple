package com.mobisols.tollpayments.response.post;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class DeviceRegistrationResponse.
 */
public class DeviceRegistrationResponse {
	
	/** The ip address. */
	private String ipAddress;
	
	/** The device id. */
	private String deviceId;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private HashMap<String, String> commands;
	
	/**
	 * Instantiates a new device registration response.
	 */
	public DeviceRegistrationResponse()
	{
		this.notifications = new LinkedList<String>();
		this.commands = new HashMap<String, String>();
	}
	
	/**
	 * Gets the notifications.
	 *
	 * @return the notifications
	 */
	public List<String> getNotifications() {
		return notifications;
	}
	
	/**
	 * Sets the notifications.
	 *
	 * @param notifications the new notifications
	 */
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	
	/**
	 * Gets the ip address.
	 *
	 * @return the ip address
	 */
	public String getIpAddress() {
		return ipAddress;
	}
	
	/**
	 * Sets the ip address.
	 *
	 * @param ipAddress the new ip address
	 */
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	
	/**
	 * Gets the device id.
	 *
	 * @return the device id
	 */
	public String getDeviceId() {
		return deviceId;
	}
	
	/**
	 * Sets the device id.
	 *
	 * @param deviceId the new device id
	 */
	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}
	
	/**
	 * Sets the commands.
	 *
	 * @param commands the new commands
	 */
	public void setCommands(HashMap<String,String> commands) {
		this.commands = commands;
	}
	
	/**
	 * Gets the commands.
	 *
	 * @return the commands
	 */
	public HashMap<String, String> getCommands() {
		return commands;
	}
}
