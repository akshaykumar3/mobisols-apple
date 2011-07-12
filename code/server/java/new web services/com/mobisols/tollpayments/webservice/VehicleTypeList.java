package com.mobisols.tollpayments.webservice;

import java.util.List;

public interface VehicleTypeList {
	List<UserVehicleTypeImpl> vehicleTypes=null;
	
	public String getVehicleType();
	public void setVehicleTypes(List<UserVehicleTypeImpl> vehicleTypes);
	public List<UserVehicleTypeImpl> getVehicleTypes();
}
