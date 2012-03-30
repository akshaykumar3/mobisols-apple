/**
 * 
 */
package com.mobisols.tollpayments.response;

/**
 * @author Raghu
 *
 */
public class ActualActivateResponse {

	private String request;
	private String status;
	private String version;
	private ActivateResponse response;
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public ActivateResponse getResponse() {
		return response;
	}
	public void setResponse(ActivateResponse response) {
		this.response = response;
	}
}
