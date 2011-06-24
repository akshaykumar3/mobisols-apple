package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;

public interface TollPayments {
	String registration=null;
	String state=null;
	TollDetails tollDetails=null;
	Double price=0.0;
	Timestamp timeStamp=null;
	String isPaid=null;
	public String getRegistration();
	public void setRegistration(String registration);
	public String getState();
	public void setState(String state);
	public TollDetails getTollDetails();
	public void setTollDetails(TollDetails tollDetails);
	public double getPrice();
	public void setPrice(Double d);
	public Timestamp getTimeStamp();
	public void setTimeStamp(Timestamp timeStamp);
	public String getIsPaid();
	public void setIsPaid(String isPaid);

}
