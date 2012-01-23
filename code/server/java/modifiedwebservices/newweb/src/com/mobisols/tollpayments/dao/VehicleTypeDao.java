package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.VehicleType;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

public interface VehicleTypeDao {

	public static final Integer DEFAULT_TYPE = Integer.parseInt(ServerConfiguration.getServerConfiguration().getValue("vehicle_default_type"));
	public List getVehicleTypeList();

	public VehicleType getVehicleType(String type);
}
