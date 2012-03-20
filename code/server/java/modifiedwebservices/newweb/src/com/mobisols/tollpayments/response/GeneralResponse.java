package com.mobisols.tollpayments.response;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class GeneralResponse.
 */
public class GeneralResponse {
	
	/** The description. */
	private String description;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private HashMap<String,String> commands;
	
	/**
	 * Instantiates a new general response.
	 */
	public GeneralResponse(){
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

	public HashMap<String, String> getCommands() {
		return commands;
	}

	public void setCommands(HashMap<String, String> commands) {
		this.commands = commands;
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
