package com.mobisols.tollpayments.webservice;

import java.util.List;

public interface VehicleTypeList {
	List<UserVehicleType> vehicleTypes=null;
	
	public String getVehicleType();
	public void setVehicleTypes(List<UserVehicleType> vehicleTypes);
	public List<UserVehicleType> getVehicleTypes();
}
