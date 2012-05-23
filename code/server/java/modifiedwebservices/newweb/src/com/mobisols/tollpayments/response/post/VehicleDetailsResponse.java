package com.mobisols.tollpayments.response.post;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class VehicleDetailsResponse.
 */
public class VehicleDetailsResponse {
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The vehicle id. */
	private int vehicleId;
	
	/** The commands. */
	private HashMap<String,String> commands;
	
	/**
	 * Instantiates a new vehicle details response.
	 */
	public VehicleDetailsResponse()
	{
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
	 * Gets the vehicle id.
	 *
	 * @return the vehicle id
	 */
	public int getVehicleId() {
		return vehicleId;
	}
	
	/**
	 * Sets the vehicle id.
	 *
	 * @param vehicleId the new vehicle id
	 */
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
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
