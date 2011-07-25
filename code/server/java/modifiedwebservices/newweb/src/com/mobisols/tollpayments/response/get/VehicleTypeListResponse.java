package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class VehicleTypeListResponse {

	private List<VehicleType> vehicleTypeList;

	public VehicleTypeListResponse()
	{
		vehicleTypeList=new LinkedList();
	}
	
	public void setVehicleTypeList(List<VehicleType> vehicleTypeList) {
		this.vehicleTypeList = vehicleTypeList;
	}

	public List<VehicleType> getVehicleTypeList() {
		return vehicleTypeList;
	}
}
