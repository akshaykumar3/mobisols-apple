package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.response.get.VehicleTypeListResponse;

public interface VehicleTypeListService extends GeneralService {
	VehicleTypeDao vehicleTypeDao=null;
	
	public VehicleTypeListResponse getVehicleTypeList();
}
