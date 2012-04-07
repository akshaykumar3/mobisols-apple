/**
 * 
 */
package com.mobisols.tollpayments.response;

/**
 * @author Raghu
 *
 */
public class ActualClientConfigResponse {
	private String request;
	private String status;
	private String version;
	private ClientConfigResponse response;
	
	public ActualClientConfigResponse() {
	}
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
	public ClientConfigResponse getResponse() {
		return response;
	}
	public void setResponse(ClientConfigResponse response) {
		this.response = response;
	}
	
}
