package com.mobisols.tollpayments.response.get;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class OwnerTypeListResponse.
 */
public class OwnerTypeListResponse {
	
	/** The owner type list. */
	private List<OwnerType> ownerTypeList;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private HashMap<String,String> commands;
	
	/**
	 * Instantiates a new owner type list response.
	 */
	public OwnerTypeListResponse()
	{
		ownerTypeList = new LinkedList();
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
	 * Gets the owner type list.
	 *
	 * @return the owner type list
	 */
	public List<OwnerType> getOwnerTypeList() {
		return ownerTypeList;
	}
	
	/**
	 * Sets the owner type list.
	 *
	 * @param ownerTypeList the new owner type list
	 */
	public void setOwnerTypeList(List<OwnerType> ownerTypeList) {
		this.ownerTypeList = ownerTypeList;
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
