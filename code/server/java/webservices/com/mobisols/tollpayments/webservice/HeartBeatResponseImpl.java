package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;

public class HeartBeatResponseImpl implements HeartBeatResponse {
	Timestamp nextTimeStamp;
	String status;
	public Timestamp getNextTimeStamp() {
		return nextTimeStamp;
	}
	public void setNextTimeStamp(Timestamp nextTimeStamp) {
		this.nextTimeStamp = nextTimeStamp;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public HeartBeatResponseImpl(){
		
	}
}
