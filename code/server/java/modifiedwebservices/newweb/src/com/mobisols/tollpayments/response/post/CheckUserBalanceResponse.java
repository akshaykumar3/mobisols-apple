package com.mobisols.tollpayments.response.post;

import java.util.LinkedList;
import java.util.List;

public class CheckUserBalanceResponse {
	private List<String> response;
	private List<String> notifications;
	private List<String> commands;
	
	public CheckUserBalanceResponse(){
		response=new LinkedList<String>();
		this.notifications = new LinkedList<String>();
		this.commands  = new LinkedList<String>();
	}
	public List<String> getNotifications() {
		return notifications;
	}
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	public List<String> getCommands() {
		return commands;
	}
	public void setCommands(List<String> commands) {
		this.commands = commands;
	}
	public List<String> getResponse() {
		return response;
	}

	public void setResponse(List<String> response) {
		this.response = response;
	}
	
}
