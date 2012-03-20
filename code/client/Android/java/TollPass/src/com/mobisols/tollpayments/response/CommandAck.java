/**
 * 
 */
package com.mobisols.tollpayments.response;

import java.util.LinkedList;
import java.util.List;

/**
 * @author Raghu
 *
 */
public class CommandAck {

	private String description;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	/**
	 * Instantiates a new CommandAck
	 */
	public CommandAck(){
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
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
	 * Gets the description.
	 *
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * Sets the description.
	 *
	 * @param description the new description
	 */
	public void setDescription(String description) {
		this.description = description;
	}
}
