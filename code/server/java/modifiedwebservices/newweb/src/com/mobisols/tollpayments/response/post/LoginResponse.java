package com.mobisols.tollpayments.response.post;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;


// TODO: Auto-generated Javadoc
/**
 * The Class LoginResponse.
 */
public class LoginResponse {

	/** The response. */
	private HashMap<String, String> response;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private HashMap<String, String> commands;
	
	/**
	 * Instantiates a new login response.
	 */
	public LoginResponse()
	{
		this.notifications = new LinkedList<String>();
		response=new HashMap<String, String>();
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
	 * Gets the response.
	 *
	 * @return the response
	 */
	public HashMap<String, String> getResponse() {
		return response;
	}

	/**
	 * Sets the response.
	 *
	 * @param response the response
	 */
	public void setResponse(HashMap<String, String> response) {
		this.response = response;
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
