package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.request.get.VehicleTypeListResponse;

public interface VehicleTypeListService extends GeneralService {
	VehicleTypeListResponse vehicleTypeListResponse=null;
	VehicleTypeDao vehicleTypeDao=null;
	
	public VehicleTypeListResponse getVehicleTypeList();
}
