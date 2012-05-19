/**
 * 
 */
package com.mobisols.tollpayments.response;

/**
 * @author Raghu
 *
 */
public class CommandAckResponse {
	private String request;
	private String status;
	private String version;
	private CommandAck response;
	
	public CommandAckResponse() {
		super();
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
	public CommandAck getResponse() {
		return response;
	}
	public void setResponse(CommandAck response) {
		this.response = response;
	}
	
}
