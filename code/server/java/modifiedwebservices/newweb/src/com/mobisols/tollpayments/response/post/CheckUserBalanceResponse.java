package com.mobisols.tollpayments.response.post;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/**
 * The Class CheckUserBalanceResponse.
 */
public class CheckUserBalanceResponse {
	
	/** The response. */
	private List<String> response;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private HashMap<String,String> commands;
	
	/**
	 * Instantiates a new check user balance response.
	 */
	public CheckUserBalanceResponse(){
		response=new LinkedList<String>();
		this.notifications = new LinkedList<String>();
		this.commands  = new HashMap<String, String>();
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
	 * Gets the commands.
	 *
	 * @return the commands
	 */
	public HashMap<String,String> getCommands() {
		return commands;
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
	 * Gets the response.
	 *
	 * @return the response
	 */
	public List<String> getResponse() {
		return response;
	}

	/**
	 * Sets the response.
	 *
	 * @param response the new response
	 */
	public void setResponse(List<String> response) {
		this.response = response;
	}
	
}
