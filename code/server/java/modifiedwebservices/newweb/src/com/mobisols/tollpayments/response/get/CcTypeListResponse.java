package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class CcTypeListResponse {
	
	private List<CcType> ccTypeList;
	private List<String> notifications;
	private List<String> commands;
	
	public CcTypeListResponse()
	{
		this.ccTypeList=new LinkedList();
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}

	public List<String> getCommands() {
		return commands;
	}

	public void setCommands(List<String> commands) {
		this.commands = commands;
	}

	public List<String> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}

	public List<CcType> getCcTypeList() {
		return ccTypeList;
	}

	public void setCcTypeList(List<CcType> ccTypeList) {
		this.ccTypeList = ccTypeList;
	}
	

}
