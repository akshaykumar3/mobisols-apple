package com.mobisols.tollpayments.request.post;

public class HeartBeatRequest {
	private String deviceId;
	private String deviceType;
	private Double latitude;
	private Double longitude;
	private Double angle;
	private String vmlType;
	private String tollSessionId;
	
	public String getDeviceId() {
		return deviceId;
	}
	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}
	public String getDeviceType() {
		return deviceType;
	}
	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}
	
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	public Double getLongitude() {
		return longitude;
	}
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	public Double getAngle() {
		return angle;
	}
	public void setAngle(Double angle) {
		this.angle = angle;
	}
	public String getVmlType() {
		return vmlType;
	}
	public void setVmlType(String vmlType) {
		this.vmlType = vmlType;
	}
	public String getTollSessionId() {
		return tollSessionId;
	}
	public void setTollSessionId(String tollSessionId) {
		this.tollSessionId = tollSessionId;
	}
}
