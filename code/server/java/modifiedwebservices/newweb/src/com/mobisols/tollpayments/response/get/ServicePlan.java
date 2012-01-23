package com.mobisols.tollpayments.response.get;

public class ServicePlan {
	private String tollOpName ;
	private String name;
	private String description;
	
	public String getTollOpName() {
		return tollOpName;
	}
	public void setTollOpName(String tollOpName) {
		this.tollOpName = tollOpName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
