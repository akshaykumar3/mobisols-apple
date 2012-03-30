/**
 * 
 */
package com.mobisols.tollpayments.request;

/**
 * @author Raghu
 *
 */
public class ActivateRequest {

	/** The active. */
	private String active;
	
	/** The service id. */
	private int serviceId;
	
	/**
	 * Gets the active.
	 *
	 * @return the active
	 */
	public String getActive() {
		return active;
	}
	
	/**
	 * Sets the active.
	 *
	 * @param active the new active
	 */
	public void setActive(String active) {
		this.active = active;
	}
	
	/**
	 * Gets the service id.
	 *
	 * @return the service id
	 */
	public int getServiceId() {
		return serviceId;
	}
	
	/**
	 * Sets the service id.
	 *
	 * @param serviceId the new service id
	 */
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	
}