package com.mobisols.tollpayments.response;

import java.util.LinkedList;
import java.util.List;

public class GeneralResponse {
	private String description;
	private List<String> notifications;
	
	public GeneralResponse(){
		this.notifications = new LinkedList<String>();
	}
	public List<String> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
