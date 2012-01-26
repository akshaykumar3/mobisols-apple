package com.mobisols.tollpayments.response.post;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class CheckUserBalanceResponse.
 */
public class CheckUserBalanceResponse {
	
	/** The response. */
	private List<String> response;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	/**
	 * Instantiates a new check user balance response.
	 */
	public CheckUserBalanceResponse(){
		response=new LinkedList<String>();
		this.notifications = new LinkedList<String>();
		this.commands  = new LinkedList<String>();
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
	public List<String> getCommands() {
		return commands;
	}
	
	/**
	 * Sets the commands.
	 *
	 * @param commands the new commands
	 */
	public void setCommands(List<String> commands) {
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
