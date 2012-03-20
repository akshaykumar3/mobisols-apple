package com.mobisols.tollpayments.response.post;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class HeartBeatResponse.
 */
public class HeartBeatResponse {
	
	/** The hash. */
	private HashMap<String, String> hash;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private HashMap<String, String> commands;
	
	/**
	 * Instantiates a new heart beat response.
	 */
	public HeartBeatResponse()
	{
		this.hash= new HashMap<String, String>();
		this.notifications = new LinkedList<String>();
		this.commands = new HashMap<String,String>();
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
	 * Gets the hash.
	 *
	 * @return the hash
	 */
	public HashMap<String, String> getHash() {
		return hash;
	}

	/**
	 * Sets the hash.
	 *
	 * @param hash the hash
	 */
	public void setHash(HashMap<String, String> hash) {
		this.hash = hash;
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
	public HashMap<String,String> getCommands() {
		return commands;
	}
}
