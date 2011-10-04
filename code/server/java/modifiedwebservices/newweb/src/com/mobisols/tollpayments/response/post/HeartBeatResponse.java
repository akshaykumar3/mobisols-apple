package com.mobisols.tollpayments.response.post;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class HeartBeatResponse {
	private HashMap<String, String> hash;
	private List<String> notifications;
	
	public HeartBeatResponse()
	{
		this.hash= new HashMap<String, String>();
		this.notifications = new LinkedList<String>();
	}

	public List<String> getNotifications() {
		return notifications;
	}

	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}

	public HashMap<String, String> getHash() {
		return hash;
	}

	public void setHash(HashMap<String, String> hash) {
		this.hash = hash;
	}
}
