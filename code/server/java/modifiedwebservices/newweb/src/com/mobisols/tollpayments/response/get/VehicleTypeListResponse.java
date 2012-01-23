package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class VehicleTypeListResponse {

	private List<VehicleType> vehicleTypeList;
	private List<String> notifications;
	private List<String> commands;
	
	public VehicleTypeListResponse()
	{
		vehicleTypeList=new LinkedList();
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	
	public List<String> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}

	public void setVehicleTypeList(List<VehicleType> vehicleTypeList) {
		this.vehicleTypeList = vehicleTypeList;
	}

	public List<VehicleType> getVehicleTypeList() {
		return vehicleTypeList;
	}

	public void setCommands(List<String> commands) {
		this.commands = commands;
	}

	public List<String> getCommands() {
		return commands;
	}
}
