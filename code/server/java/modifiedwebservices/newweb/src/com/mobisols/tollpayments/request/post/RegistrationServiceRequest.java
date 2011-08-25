package com.mobisols.tollpayments.request.post;

public class RegistrationServiceRequest {

	private String userName;
	private String password;
	private DeviceDetails deviceDetails;
	
	public DeviceDetails getDeviceDetails() {
		return deviceDetails;
	}
	public void setDeviceDetails(DeviceDetails deviceDetails) {
		this.deviceDetails = deviceDetails;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
