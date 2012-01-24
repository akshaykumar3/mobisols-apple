package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class CcTypeListResponse.
 */
public class CcTypeListResponse {
	
	/** The cc type list. */
	private List<CcType> ccTypeList;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	/**
	 * Instantiates a new cc type list response.
	 */
	public CcTypeListResponse()
	{
		this.ccTypeList=new LinkedList();
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
	 * Gets the cc type list.
	 *
	 * @return the cc type list
	 */
	public List<CcType> getCcTypeList() {
		return ccTypeList;
	}

	/**
	 * Sets the cc type list.
	 *
	 * @param ccTypeList the new cc type list
	 */
	public void setCcTypeList(List<CcType> ccTypeList) {
		this.ccTypeList = ccTypeList;
	}
	

}
