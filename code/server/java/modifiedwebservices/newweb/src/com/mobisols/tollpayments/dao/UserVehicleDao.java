package com.mobisols.tollpayments.dao;

import java.sql.Timestamp;
import java.util.List;

import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserVehicleDao.
 * Used to access the user_vehicle table of the database.
 */
public interface UserVehicleDao {
	
	/** The Constant VEHICLE_ACTIVE. */
	public static final String VEHICLE_ACTIVE = ServerConfiguration.getServerConfiguration().getValue("vehicle_active");
	
	/** The Constant VEHICLE_INACTIVE. */
	public static final String VEHICLE_INACTIVE = ServerConfiguration.getServerConfiguration().getValue("vehicle_inactive");
	
	/** The Constant VEHICLE_INCOMPLETE. */
	public static final String VEHICLE_INCOMPLETE = ServerConfiguration.getServerConfiguration().getValue("vehicle_incomplete");
	
	/** The Constant VEHICLE_SUSPEND. */
	public static final String VEHICLE_SUSPEND = ServerConfiguration.getServerConfiguration().getValue("vehicle_suspend");
	
	/** The Constant VEHICLE_BLOCK. */
	public static final String VEHICLE_BLOCK = ServerConfiguration.getServerConfiguration().getValue("vehicle_block");
	
	/** The Constant VEHICLE_STANDBY. */
	public static final String VEHICLE_STANDBY = ServerConfiguration.getServerConfiguration().getValue("vehicle_standby");
	
	/** The Constant DEFAULT_MODEL. */
	public static final Integer DEFAULT_MODEL = Integer.parseInt(ServerConfiguration.getServerConfiguration().getValue("vehicle_default_model"));
	
    
	/**
	 * Gets the vehicle with the given registration number, state and user id.
	 *
	 * @param reg the registration number of the vehicle. 
	 * @param state the registered state of the vehicle.
	 * @param userId the user id
	 * @return the vehicle
	 */
	public UserVehicle getVehicle(String reg,String state,int userId);
	
	/**
	 * Update.
	 *
	 * @param uv the uv
	 */
	public void update(UserVehicle uv);
	
	/**
	 * Delete.
	 *
	 * @param uv the uv
	 */
	public void delete(UserVehicle uv);
	
	/**
	 * Saves the user vehicle to the database.
	 *
	 * @param uv the UserVehicle object
	 */
	public void save(UserVehicle uv);
	
	/**
	 * Gets the vehicle whose id is given.
	 *
	 * @param vehicleId the vehicle id
	 * @return the vehicle
	 */
	public UserVehicle getVehicle(int vehicleId);
	
	/**
	 * Gets the active vehicles of the given user.
	 *
	 * @param username the username
	 * @return the list of active vehicles
	 */
	public List<UserVehicle> getActiveVehicles(String username);
	
	/**
	 * Gets the stand by vehicles of the given user.
	 *
	 * @param username the username
	 * @return the list of stand by vehicles of the user.
	 */
	public List getStandByVehicles(String username);
	
	/**
	 * Gets the all active vehicles in the database.
	 *
	 * @return the list active vehicles
	 */
	public List<UserVehicle> getAllActiveVehicles();
	
	/**
	 * Gets the active vehicles with the given vehicle registration and registered state.
	 *
	 * @param reg the registration number of vehicle
	 * @param state the registered state of the vehicle
	 * @return the list of active vehicles
	 */
	public List<UserVehicle> getActiveVehicles(String reg,String state);
	
	/**
	 * Gets the active vehicles with given vehicle registration number , registered state and expiry date.
	 *
	 * @param reg the registration number of vehicle
	 * @param state the registered state of vehicle
	 * @param expiry the expiry date of vehicle
	 * @return the list of active vehicles
	 */
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp expiry);
	
	/**
	 * Gets the active vehicles with given vehicle registration number, registered state, start date and end date.
	 *
	 * @param reg the registration number if vehicle
	 * @param state the registered state of the vehicle
	 * @param start the start date of the vehicle
	 * @param expiry the expiry date of the vehicle
	 * @return the list of active vehicles
	 */
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp start,Timestamp expiry);
}
