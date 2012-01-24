package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.VehicleDetailsRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface VehicleDetailsService.
 */
public interface VehicleDetailsService {
	
	/** The user vehicle dao. */
	UserVehicleDao userVehicleDao=null;
	
	/** The user dao. */
	UserDao userDao=null;
	
	/** The my util date. */
	MyUtilDate myUtilDate=null;
	
	/** The owner type dao. */
	OwnerTypeDao ownerTypeDao=null;
	
	/** The vehicle type dao. */
	VehicleTypeDao vehicleTypeDao=null;
	
	/**
	 * Post vehicle details.
	 *
	 * @param request the request
	 * @param vdr the vdr
	 * @param user the user
	 * @param isNewVehicle the is new vehicle
	 * @return the string
	 */
	public String postVehicleDetails(String request,VehicleDetailsRequest vdr,String user,String isNewVehicle);
	
	/**
	 * Delete vehicle.
	 *
	 * @param request the request
	 * @param vehicleId the vehicle id
	 * @param user the user
	 * @return the string
	 */
	public String deleteVehicle(String request,int vehicleId,String user);
}
