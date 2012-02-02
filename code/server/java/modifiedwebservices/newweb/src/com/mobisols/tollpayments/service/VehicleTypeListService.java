package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.VehicleTypeDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface VehicleTypeListService.
 * Used to send the type of vehicles that are available to add.
 */
public interface VehicleTypeListService  {
	
	/** The vehicle type dao. */
	VehicleTypeDao vehicleTypeDao=null;
	
	/**
	 * Gets the vehicle type list.
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @return the json String of vehicle type list com.mobisols.tollpayments.response.get.VehicleTypeListresponse.
	 */
	public String getVehicleTypeList(String request);
}
