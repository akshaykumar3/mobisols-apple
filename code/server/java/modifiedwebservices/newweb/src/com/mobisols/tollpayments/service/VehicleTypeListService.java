package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.VehicleTypeDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface VehicleTypeListService.
 */
public interface VehicleTypeListService  {
	
	/** The vehicle type dao. */
	VehicleTypeDao vehicleTypeDao=null;
	
	/**
	 * Gets the vehicle type list.
	 *
	 * @param request the request
	 * @return the vehicle type list
	 */
	public String getVehicleTypeList(String request);
}
