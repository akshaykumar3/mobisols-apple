package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.VehicleType;

public interface VehicleTypeDao {

	public static final Integer DEFAULT_TYPE = 1;
	public List getVehicleTypeList();

	public VehicleType getVehicleType(String type);
}
