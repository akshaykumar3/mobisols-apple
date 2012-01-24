package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.VehicleType;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Interface VehicleTypeDao.
 */
public interface VehicleTypeDao {

	/** The Constant DEFAULT_TYPE. */
	public static final Integer DEFAULT_TYPE = Integer.parseInt(ServerConfiguration.getServerConfiguration().getValue("vehicle_default_type"));
	
	/**
	 * Gets the vehicle type list.
	 *
	 * @return the vehicle type list
	 */
	public List getVehicleTypeList();

	/**
	 * Gets the vehicle type.
	 *
	 * @param type the type
	 * @return the vehicle type
	 */
	public VehicleType getVehicleType(String type);
}
