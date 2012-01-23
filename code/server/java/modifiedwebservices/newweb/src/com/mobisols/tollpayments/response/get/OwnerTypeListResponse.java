package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class OwnerTypeListResponse {
	
	private List<OwnerType> ownerTypeList;
	private List<String> notifications;
	private List<String> commands;
	
	public OwnerTypeListResponse()
	{
		ownerTypeList = new LinkedList();
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	public List<String> getNotifications() {
		return notifications;
	}
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	public List<OwnerType> getOwnerTypeList() {
		return ownerTypeList;
	}
	public void setOwnerTypeList(List<OwnerType> ownerTypeList) {
		this.ownerTypeList = ownerTypeList;
	}
	public void setCommands(List<String> commands) {
		this.commands = commands;
	}
	public List<String> getCommands() {
		return commands;
	}

}
