package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class TollLocationListResponse.
 */
public class TollLocationListResponse {

	/** The toll details list. */
	private List<TollDetails> tollDetailsList;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	/**
	 * Instantiates a new toll location list response.
	 */
	public TollLocationListResponse()
	{
		tollDetailsList = new LinkedList<TollDetails>();
		this.notifications  = new LinkedList<String>();
		this.commands = new LinkedList<String>();
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
	 * Gets the toll details list.
	 *
	 * @return the toll details list
	 */
	public List<TollDetails> getTollDetailsList() {
		return tollDetailsList;
	}

	/**
	 * Sets the toll details list.
	 *
	 * @param tollDetailsList the new toll details list
	 */
	public void setTollDetailsList(List<TollDetails> tollDetailsList) {
		this.tollDetailsList = tollDetailsList;
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
	 * Gets the commands.
	 *
	 * @return the commands
	 */
	public List<String> getCommands() {
		return commands;
	}
}
