package com.mobisols.tollpayments.webservice;

import java.util.Date;

import javax.ws.rs.QueryParam;


public interface VehicleDetails {
	String registration=null;
	String State=null;
	String type=null;
	String isActive=null;
	Date startDate=null;
	Date endDate=null;
	
	public String postVehicleDetails(@QueryParam("json") String json,@QueryParam("username") String user);
	public String deleteVechileDetails(@QueryParam("json") String json,@QueryParam("username") String user);
	public String getRegistration();
	public void setRegistration(String registration);
	public String getState();
	public void setState(String state);
	public String getType();
	public void setType(String type);
	public String getIsActive();
	public void setIsActive(String isActive);
	public Date getStartDate();
	public void setStartDate(Date startDate);
	public Date getEndDate();
	public void setEndDate(Date endDate);
}
