package com.mobisols.tollpayments.response;

public class ActualHeartBeatResponse {
	private String request;
	private String status;
	private String version;
	private HeartBeatResponse response;
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
	public HeartBeatResponse getResponse() {
		return response;
	}
	public void setResponse(HeartBeatResponse response) {
		this.response = response;
	}
	
}
