package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;

public interface HeartBeat {
	Timestamp timeStamp=null;
	Double latitude=null;
	Double longitude=null;
	Double angle=null;
	String vmlType=null;
	String getHeartBeat(String user,String json,int clientId);
	public Timestamp getTimeStamp();
	public void setTimeStamp(Timestamp timeStamp);
	public Double getLatitude();
	public void setLatitude(Double latitude);
	public Double getLongitude();
	public void setLongitude(Double longitude);
	public Double getAngle();
	public void setAngle(Double angle);
	public void setVmlType(String vmlType);
	public String getVmlType();
}
