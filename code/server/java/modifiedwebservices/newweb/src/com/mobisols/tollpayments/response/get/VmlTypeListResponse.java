package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class VmlTypeListResponse.
 */
public class VmlTypeListResponse {
	
	/** The vml type list. */
	private List<VmlType> vmlTypeList;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	/**
	 * Instantiates a new vml type list response.
	 */
	public VmlTypeListResponse()
	{
		vmlTypeList = new LinkedList();
		this.notifications = new LinkedList<String>();
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
	 * Gets the vml type list.
	 *
	 * @return the vml type list
	 */
	public List<VmlType> getVmlTypeList() {
		return vmlTypeList;
	}

	/**
	 * Sets the vml type list.
	 *
	 * @param vmlTypeList the new vml type list
	 */
	public void setVmlTypeList(List<VmlType> vmlTypeList) {
		this.vmlTypeList = vmlTypeList;
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
