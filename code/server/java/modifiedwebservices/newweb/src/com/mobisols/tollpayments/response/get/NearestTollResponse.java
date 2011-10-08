package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class NearestTollResponse {
	private String city;
	private String state;
	private String tollOperator;
	private double tollPrice;
	private double averagePrice;
	private List<String> notifications;
	private List<String> commands;
	
	public NearestTollResponse()
	{
		this.notifications = new LinkedList<String>();
		this.commands = new LinkedList<String>();
	}
	public List<String> getNotifications() {
		return notifications;
	}
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTollOperator() {
		return tollOperator;
	}
	public void setTollOperator(String tollOperator) {
		this.tollOperator = tollOperator;
	}
	public double getTollPrice() {
		return tollPrice;
	}
	public void setTollPrice(double tollPrice) {
		this.tollPrice = tollPrice;
	}
	public double getAveragePrice() {
		return averagePrice;
	}
	public void setAveragePrice(double averagePrice) {
		this.averagePrice = averagePrice;
	}
	public void setCommands(List<String> commands) {
		this.commands = commands;
	}
	public List<String> getCommands() {
		return commands;
	}
}
