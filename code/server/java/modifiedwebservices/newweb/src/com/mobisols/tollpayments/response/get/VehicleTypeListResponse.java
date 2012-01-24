package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class VehicleTypeListResponse.
 */
public class VehicleTypeListResponse {

	/** The vehicle type list. */
	private List<VehicleType> vehicleTypeList;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private List<String> commands;
	
	/**
	 * Instantiates a new vehicle type list response.
	 */
	public VehicleTypeListResponse()
	{
		vehicleTypeList=new LinkedList();
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
	 * Sets the vehicle type list.
	 *
	 * @param vehicleTypeList the new vehicle type list
	 */
	public void setVehicleTypeList(List<VehicleType> vehicleTypeList) {
		this.vehicleTypeList = vehicleTypeList;
	}

	/**
	 * Gets the vehicle type list.
	 *
	 * @return the vehicle type list
	 */
	public List<VehicleType> getVehicleTypeList() {
		return vehicleTypeList;
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
