package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;

public interface BalanceLog {
	double delta=0.0;
	String description=null;
	String timeStamp=null;
	public Double getDelta();
	public void setDelta(Double delta);
	public String getDescription();
	public void setDescription(String description);
	public Timestamp getTimeStamp() ;
	public void setTimeStamp(Timestamp timestamp1);
}
