package com.mobisols.tollpayments.webservice;

public interface TollDetails {
	String tollOperator=null;
	String city=null;
	String State=null;
	String zip=null;
	double latitude=0.0f;
	double longitude=0.0f;
	public String getTollOperator();
	public void setTollOperator(String tollOperator);
	public String getCity();
	public void setCity(String city);
	public String getState();
	public void setState(String state);
	public String getZip();
	public void setZip(String zip);
	public void setLatitude(double latitude);
	public double getLatitude();
	public void setLongitude(double longitude);
	public double getLongitude();
}
