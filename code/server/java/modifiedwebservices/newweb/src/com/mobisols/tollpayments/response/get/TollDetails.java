package com.mobisols.tollpayments.response.get;

public class TollDetails {
	private String tollOperator;
	private String city;
	private String State;
	private String zip;
	private double latitude;
	private double longitude;
	private String isCovered;
	public String getTollOperator() {
		return tollOperator;
	}
	public void setTollOperator(String tollOperator) {
		this.tollOperator = tollOperator;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getIsCovered() {
		return isCovered;
	}
	public void setIsCovered(String isCovered) {
		this.isCovered = isCovered;
	}
}
