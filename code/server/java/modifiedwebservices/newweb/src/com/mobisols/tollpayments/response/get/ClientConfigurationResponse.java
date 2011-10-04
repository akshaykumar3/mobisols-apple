package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class ClientConfigurationResponse {
	private Integer compVersionId=0;
	private String key=null;
	private String value=null;
	private List<String> notifications;
	
	public ClientConfigurationResponse(){
		this.notifications = new LinkedList<String>();
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
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
}
