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
 * Used to respond to the request related to the vehicle details.
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
	 * Saves or Updates the user details to the user account.
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @param vdr the vehicle details request.
	 * @param user the username 
	 * @param isNewVehicle determines whether the vehicle is new vehicle or old vehicle that is for update. 
	 * @return the json string similar to com.mobisols.tollpayments.response.GeneralResponse.
	 */
	public String postVehicleDetails(String request,VehicleDetailsRequest vdr,String user,String isNewVehicle);
	
	/**
	 * Deletes vehicle from the user account.
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @param vehicleId the vehicle id of the vehicle that is to deleted.
	 * @param user the username of the user.
	 * @return the json string similar to com.mobisols.tollpayments.response.GeneralResponse.
	 */
	public String deleteVehicle(String request,int vehicleId,String user);
}
