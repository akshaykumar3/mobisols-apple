package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.VehicleTypeDao;

public interface VehicleTypeListService  {
	VehicleTypeDao vehicleTypeDao=null;
	
	public String getVehicleTypeList(String request);
}
