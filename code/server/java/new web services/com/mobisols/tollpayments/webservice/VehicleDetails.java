package com.mobisols.tollpayments.webservice;

import java.util.Date;

import javax.ws.rs.FormParam;
import javax.ws.rs.QueryParam;


public interface VehicleDetails {
	String registration=null;
	String State=null;
	String type=null;
	String isActive=null;
	Date startDate=null;
	Date endDate=null;
	String ownerType=null;
	int vehicleId=-1;
	
	public String putVehicleDetails(String json,String user,String isNewVehicle,int hasId);
	public String postVehicleDetails(String json,String user,String isNewVehicle,int hasId );
	public String deleteVechileDetails( String json,String user,int hasId);
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
	public String getOwnerType();
	public void setOwnerType(String ownerType);
	public int getVehicleId();
	public void setVehicleId(int vehicleId);
}
