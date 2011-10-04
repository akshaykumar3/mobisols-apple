package com.mobisols.tollpayments.response.post;

import java.util.LinkedList;
import java.util.List;

public class DeviceRegistrationResponse {
	private String ipAddress;
	private String deviceId;
	private List<String> notifications;
	public DeviceRegistrationResponse()
	{
		this.notifications = new LinkedList<String>();
	}
	public List<String> getNotifications() {
		return notifications;
	}
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	public String getIpAddress() {
		return ipAddress;
	}
	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}
	public String getDeviceId() {
		return deviceId;
	}
	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}
}
