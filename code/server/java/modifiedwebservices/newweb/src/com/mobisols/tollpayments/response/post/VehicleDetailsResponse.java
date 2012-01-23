package com.mobisols.tollpayments.response.post;

import java.util.LinkedList;
import java.util.List;

public class VehicleDetailsResponse {
	private List<String> notifications;
	private int vehicleId;
	private List<String> commands;
	
	public VehicleDetailsResponse()
	{
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	public List<String> getNotifications() {
		return notifications;
	}
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	public int getVehicleId() {
		return vehicleId;
	}
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}
	public void setCommands(List<String> commands) {
		this.commands = commands;
	}
	public List<String> getCommands() {
		return commands;
	}
}
