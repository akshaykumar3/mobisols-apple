package com.mobisols.tollpayments.webservice;

public interface NearestToll {
	String city=null;
	String state=null;
	String tollOperator=null;
	double tollPrice=0.0;
	double averagePrice=0.0;
	public String getNearestToll( String json);
	public String getCity();
	public void setCity(String city);
	public String getState();
	public void setState(String state);
	public String getTollOperator();
	public void setTollOperator(String tollOperator);
	public double getTollPrice();
	public void setTollPrice(double tollPrice);
	public double getAveragePrice();
	public void setAveragePrice(double averagePrice);
}
