package com.mobisols.tollpayments.response.get;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class ClientConfigurationResponse {
	private Integer compVersionId=0;
	private HashMap<String, String> keyValues;
	private List<String> notifications;
	private List<String> commands;
	
	public ClientConfigurationResponse(){
		this.keyValues = new HashMap<String, String>();
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
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
	public Integer getCompVersionId() {
		return compVersionId;
	}
	public void setCompVersionId(Integer compVersionId) {
		this.compVersionId = compVersionId;
	}
	public void setCommands(List<String> commands) {
		this.commands = commands;
	}
	public List<String> getCommands() {
		return commands;
	}
	
}
