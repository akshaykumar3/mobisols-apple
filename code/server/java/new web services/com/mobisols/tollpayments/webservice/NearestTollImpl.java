package com.mobisols.tollpayments.webservice;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

@Path("/NearestToll")
public class NearestTollImpl implements NearestToll {
	private String city;
	private String state;
	private String tollOperator;
	private double tollPrice;
	private double averagePrice;
	
	public NearestTollImpl(){
		
	}
	public NearestTollImpl(double latitude, double longitude){
		this.setAveragePrice(2.5);
		this.setCity("xyz");
		this.setState("NewYork");
		this.setTollOperator("abcd");
		this.setTollPrice(2.7);
	}
	@GET
	public String getNearestToll(@QueryParam("json") String json){
		JsonConverter jc=new JsonConverterImpl();
		Location l=(Location) jc.getObject(json, "com.mobisols.tollpayments.webservice.LocationImpl");
		System.out.println(l.getLatitude());
		System.out.println(l.getLongitude());
		NearestToll nt=new NearestTollImpl(l.getLatitude(),l.getLongitude());
		String request="";
		String status="";
		return jc.getJSON(request, status, l);
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
}
