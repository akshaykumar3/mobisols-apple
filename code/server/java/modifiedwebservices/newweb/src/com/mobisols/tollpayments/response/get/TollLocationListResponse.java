package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class TollLocationListResponse {

	private List<TollDetails> tollDetailsList;
	private List<String> notifications;
	private List<String> commands;
	
	public TollLocationListResponse()
	{
		tollDetailsList = new LinkedList<TollDetails>();
		this.notifications  = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	
	public List<String> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}

	public List<TollDetails> getTollDetailsList() {
		return tollDetailsList;
	}

	public void setTollDetailsList(List<TollDetails> tollDetailsList) {
		this.tollDetailsList = tollDetailsList;
	}

	public void setCommands(List<String> commands) {
		this.commands = commands;
	}

	public List<String> getCommands() {
		return commands;
	}
}
