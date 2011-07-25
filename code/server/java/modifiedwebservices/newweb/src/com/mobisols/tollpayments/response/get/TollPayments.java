package com.mobisols.tollpayments.response.get;

import java.sql.Timestamp;


public class TollPayments {
	private String registration;
	private String state;
	private TollDetails tollDetails;
	private Double price;
	private Timestamp timeStamp;
	private String isPaid;
	
	public TollPayments()
	{
		this.tollDetails = new TollDetails();
	}
	public String getRegistration() {
		return registration;
	}
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public TollDetails getTollDetails() {
		return tollDetails;
	}
	public void setTollDetails(TollDetails tollDetails) {
		this.tollDetails = tollDetails;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Timestamp getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Timestamp timeStamp) {
		this.timeStamp = timeStamp;
	}
	public String getIsPaid() {
		return isPaid;
	}
	public void setIsPaid(String isPaid) {
		this.isPaid = isPaid;
	}
	
}
