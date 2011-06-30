package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;

public interface HeartBeatResponse {
	Timestamp nextTimeStamp=null;
	String status=null;
	public Timestamp getNextTimeStamp();
	public void setNextTimeStamp(Timestamp nextTimeStamp);
	public String getStatus();
	public void setStatus(String status);
}
