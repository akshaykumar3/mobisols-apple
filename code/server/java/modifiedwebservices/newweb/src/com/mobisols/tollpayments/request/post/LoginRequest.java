package com.mobisols.tollpayments.request.post;

// TODO: Auto-generated Javadoc
/**
 * The Class LoginRequest.
 */
public class LoginRequest {
	
	/** The user name. */
	private String userName;
	
	/** The password. */
	private String password;
	
	/** The device details. */
	private DeviceDetails deviceDetails;
	
	/**
	 * Gets the user name.
	 *
	 * @return the user name
	 */
	public String getUserName() {
		return userName;
	}
	
	/**
	 * Sets the user name.
	 *
	 * @param userName the new user name
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	/**
	 * Gets the password.
	 *
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	
	/**
	 * Sets the password.
	 *
	 * @param password the new password
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 * Gets the device details.
	 *
	 * @return the device details
	 */
	public DeviceDetails getDeviceDetails() {
		return deviceDetails;
	}
	
	/**
	 * Sets the device details.
	 *
	 * @param deviceDetails the new device details
	 */
	public void setDeviceDetails(DeviceDetails deviceDetails) {
		this.deviceDetails = deviceDetails;
	}
	
}
