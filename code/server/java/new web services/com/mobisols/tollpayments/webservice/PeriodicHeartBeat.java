package com.mobisols.tollpayments.webservice;

import java.util.Date;


public interface PeriodicHeartBeat {
	double latitude=0.0;
	double longitude=0.0;
	Date timeStamp=null;

	public String postPeriodicHeartBeat( String json,String user);
	public double getLatitude();

	public void setLatitude(double latitude);

	public double getLongitude();

	public void setLongitude(double longitude);

	public Date getTimeStamp();

	public void setTimeStamp(Date timeStamp);
}
