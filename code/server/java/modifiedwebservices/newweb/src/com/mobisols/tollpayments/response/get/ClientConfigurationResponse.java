package com.mobisols.tollpayments.response.get;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/**
 * The Class ClientConfigurationResponse.
 */
public class ClientConfigurationResponse {
	
	/** The comp version id. */
	private Integer compVersionId=0;
	
	/** The key values. */
	private HashMap<String, String> keyValues;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	/**
	 * Instantiates a new client configuration response.
	 */
	public ClientConfigurationResponse(){
		this.keyValues = new HashMap<String, String>();
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	
	/**
	 * Gets the key values.
	 *
	 * @return the key values
	 */
	public HashMap<String, String> getKeyValues() {
		return keyValues;
	}
	
	/**
	 * Sets the key values.
	 *
	 * @param keyValues the key values
	 */
	public void setKeyValues(HashMap<String, String> keyValues) {
		this.keyValues = keyValues;
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
	 * Gets the comp version id.
	 *
	 * @return the comp version id
	 */
	public Integer getCompVersionId() {
		return compVersionId;
	}
	
	/**
	 * Sets the comp version id.
	 *
	 * @param compVersionId the new comp version id
	 */
	public void setCompVersionId(Integer compVersionId) {
		this.compVersionId = compVersionId;
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
