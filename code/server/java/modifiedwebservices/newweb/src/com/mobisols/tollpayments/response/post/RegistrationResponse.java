package com.mobisols.tollpayments.response.post;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class RegistrationResponse {

	private HashMap<String, String> response;
	private List<String> notifications;
	
	public RegistrationResponse()
	{
		this.notifications = new LinkedList<String>();
		response=new HashMap<String, String>();
	}
	
	public List<String> getNotifications() {
		return notifications;
	}
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	public HashMap<String, String> getResponse() {
		return response;
	}

	public void setResponse(HashMap<String, String> response) {
		this.response = response;
	}
}
