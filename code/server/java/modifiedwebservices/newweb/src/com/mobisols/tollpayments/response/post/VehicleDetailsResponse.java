package com.mobisols.tollpayments.response.post;

import java.util.LinkedList;
import java.util.List;

public class VehicleDetailsResponse {
	private List<String> notifications;
	private int vehicleId;
	
	public VehicleDetailsResponse()
	{
		this.notifications = new LinkedList<String>();
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
}
