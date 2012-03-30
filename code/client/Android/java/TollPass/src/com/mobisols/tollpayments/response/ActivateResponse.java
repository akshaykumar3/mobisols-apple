/**
 * 
 */
package com.mobisols.tollpayments.response;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/**
 * @author Raghu
 *
 */
public class ActivateResponse {
	/** The notifications. */
	private List<String> notifications;
	
	/** The active. */
	private String active;
	
	/** The commands. */
	private HashMap<String, String> commands;
	
	
	/**
	 * Instantiates a new activate response.
	 */
	public ActivateResponse(){
		this.notifications = new LinkedList<String>();
		this.commands = new HashMap<String, String>();
	}
	
	/**
	 * Gets the active.
	 *
	 * @return the active
	 */
	public String getActive() {
		return active;
	}

	/**
	 * Sets the active.
	 *
	 * @param active the new active
	 */
	public void setActive(String active) {
		this.active = active;
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
