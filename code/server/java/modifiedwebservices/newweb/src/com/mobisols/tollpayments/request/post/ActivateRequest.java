package com.mobisols.tollpayments.request.post;

public class ActivateRequest {

	private String active;
	private int serviceId;
	private int activeVehicleId;
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public int getActiveVehicleId() {
		return activeVehicleId;
	}
	public void setActiveVehicleId(int activeVehicleId) {
		this.activeVehicleId = activeVehicleId;
	}
	
}
