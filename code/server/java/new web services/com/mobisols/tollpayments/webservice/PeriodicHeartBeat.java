package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;



public interface PeriodicHeartBeat {
	String deviceId=null;
	String deviceType=null;
	Timestamp timeStamp=null;
	Double latitude=null;
	Double longitude=null;
	Double angle=null;
	String vmlType=null;
	String tollSessionId=null;
	
	String postPeriodicHeartBeat(String user,String json);
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
	public String getDeviceId();
	public void setDeviceId(String deviceId);
	public String getDeviceType();
	public void setDeviceType(String deviceType);
	public String getTollSessionId();
	public void setTollSessionId(String tollSessionId);
}
