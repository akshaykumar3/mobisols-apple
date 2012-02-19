package com.mobisols.tollpayments.request.post;

import java.sql.Timestamp;

// TODO: Auto-generated Javadoc
/**
 * The Class HeartBeatRequest.
 */
public class HeartBeatRequest {
	
	/** The device id. */
	private String deviceId;
	
	/** The device type. */
	private String deviceType;
	
	/** The latitude. */
	private Double latitude;
	
	/** The longitude. */
	private Double longitude;
	
	/** The angle. */
	private Double angle;
	
	/** The vml type. */
	private String vmlType;
	
	/** The toll session id. */
	private String tollSessionId;
	
	private Timestamp timeStamp;
	
	/**
	 * Gets the device id.
	 *
	 * @return the device id
	 */
	public String getDeviceId() {
		return deviceId;
	}
	
	/**
	 * Sets the device id.
	 *
	 * @param deviceId the new device id
	 */
	public void setDeviceId(String deviceId) {
		this.deviceId = deviceId;
	}
	
	/**
	 * Gets the device type.
	 *
	 * @return the device type
	 */
	public String getDeviceType() {
		return deviceType;
	}
	
	/**
	 * Sets the device type.
	 *
	 * @param deviceType the new device type
	 */
	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType;
	}
	
	/**
	 * Gets the latitude.
	 *
	 * @return the latitude
	 */
	public Double getLatitude() {
		return latitude;
	}
	
	/**
	 * Sets the latitude.
	 *
	 * @param latitude the new latitude
	 */
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	
	/**
	 * Gets the longitude.
	 *
	 * @return the longitude
	 */
	public Double getLongitude() {
		return longitude;
	}
	
	/**
	 * Sets the longitude.
	 *
	 * @param longitude the new longitude
	 */
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}
	
	/**
	 * Gets the angle.
	 *
	 * @return the angle
	 */
	public Double getAngle() {
		return angle;
	}
	
	/**
	 * Sets the angle.
	 *
	 * @param angle the new angle
	 */
	public void setAngle(Double angle) {
		this.angle = angle;
	}
	
	/**
	 * Gets the vml type.
	 *
	 * @return the vml type
	 */
	public String getVmlType() {
		return vmlType;
	}
	
	/**
	 * Sets the vml type.
	 *
	 * @param vmlType the new vml type
	 */
	public void setVmlType(String vmlType) {
		this.vmlType = vmlType;
	}
	
	/**
	 * Gets the toll session id.
	 *
	 * @return the toll session id
	 */
	public String getTollSessionId() {
		return tollSessionId;
	}
	
	/**
	 * Sets the toll session id.
	 *
	 * @param tollSessionId the new toll session id
	 */
	public void setTollSessionId(String tollSessionId) {
		this.tollSessionId = tollSessionId;
	}

	public Timestamp getTimeStamp() {
		return timeStamp;
	}

	public void setTimeStamp(Timestamp timestamp) {
		this.timeStamp = timestamp;
	}
}
