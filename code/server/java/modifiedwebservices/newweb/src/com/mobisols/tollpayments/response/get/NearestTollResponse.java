package com.mobisols.tollpayments.response.get;

public class NearestTollResponse {
	private String city;
	private String state;
	private String tollOperator;
	private double tollPrice;
	private double averagePrice;
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
}
