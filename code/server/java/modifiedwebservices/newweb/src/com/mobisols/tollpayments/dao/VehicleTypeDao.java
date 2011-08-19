package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.VehicleType;

public interface VehicleTypeDao {

	public List getVehicleTypeList();

	public VehicleType getVehicleType(String type);
}
