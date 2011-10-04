package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class VehicleTypeListResponse {

	private List<VehicleType> vehicleTypeList;
	private List<String> notifications;
	public VehicleTypeListResponse()
	{
		vehicleTypeList=new LinkedList();
		this.notifications = new LinkedList<String>();
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
}
