package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class VmlTypeListResponse {
	
	private List<VmlType> vmlTypeList;
	private List<String> notifications;
	private List<String> commands;
	
	public VmlTypeListResponse()
	{
		vmlTypeList = new LinkedList();
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}

	public List<String> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}

	public List<VmlType> getVmlTypeList() {
		return vmlTypeList;
	}

	public void setVmlTypeList(List<VmlType> vmlTypeList) {
		this.vmlTypeList = vmlTypeList;
	}

	public void setCommands(List<String> commands) {
		this.commands = commands;
	}

	public List<String> getCommands() {
		return commands;
	}

	
}
