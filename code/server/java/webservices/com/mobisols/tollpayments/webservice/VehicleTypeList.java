package com.mobisols.tollpayments.webservice;

import java.util.List;

public interface VehicleTypeList {
	List<VehicleType> vehicleTypes=null;
	
	public String getVehicleType(int clientid);
	public void setVehicleTypes(List<VehicleType> vehicleTypes);
	public List<VehicleType> getVehicleTypes();
}
