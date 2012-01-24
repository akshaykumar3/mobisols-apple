package com.mobisols.tollpayments.request.post;

// TODO: Auto-generated Javadoc
/**
 * The Class RegistrationServiceRequest.
 */
public class RegistrationServiceRequest {

	/** The user name. */
	private String userName;
	
	/** The device details. */
	private DeviceDetails deviceDetails;
	
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
}
