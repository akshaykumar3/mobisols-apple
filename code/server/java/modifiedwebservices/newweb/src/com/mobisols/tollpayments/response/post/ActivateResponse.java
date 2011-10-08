package com.mobisols.tollpayments.response.post;

import java.util.LinkedList;
import java.util.List;

public class ActivateResponse {
	
	private List<String> notifications;
	private String active;
	private List<String> commands;
	
	
	public ActivateResponse(){
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	
	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public List<String> getNotifications() {
		return notifications;
	}
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}

	public void setCommands(List<String> commands) {
		this.commands = commands;
	}

	public List<String> getCommands() {
		return commands;
	}
}
