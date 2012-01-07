package com.mobisols.tollpayments.response;

import java.util.HashMap;
import java.util.List;

public class ClientConfigResponse {
	private HashMap<String, String> keyValues;
	private int compVersionId;
	private List<String> notifications;
	private List<String> commands;
	
	public ClientConfigResponse(){
		
	}
	
	public int getCompVersionId() {
		return compVersionId;
	}

	public void setCompVersionId(int compVersionId) {
		this.compVersionId = compVersionId;
	}

	public HashMap<String, String> getKeyValues() {
		return keyValues;
	}

	public void setKeyValues(HashMap<String, String> keyValues) {
		this.keyValues = keyValues;
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
	
}
