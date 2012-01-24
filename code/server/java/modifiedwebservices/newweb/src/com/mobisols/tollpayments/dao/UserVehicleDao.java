package com.mobisols.tollpayments.dao;

import java.sql.Timestamp;
import java.util.List;

import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserVehicleDao.
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
	 * Gets the vehicle.
	 *
	 * @param reg the reg
	 * @param state the state
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
	 * Save.
	 *
	 * @param uv the uv
	 */
	public void save(UserVehicle uv);
	
	/**
	 * Gets the vehicle.
	 *
	 * @param vehicleId the vehicle id
	 * @return the vehicle
	 */
	public UserVehicle getVehicle(int vehicleId);
	
	/**
	 * Gets the active vehicles.
	 *
	 * @param username the username
	 * @return the active vehicles
	 */
	public List<UserVehicle> getActiveVehicles(String username);
	
	/**
	 * Gets the stand by vehicles.
	 *
	 * @param username the username
	 * @return the stand by vehicles
	 */
	public List getStandByVehicles(String username);
	
	/**
	 * Gets the all active vehicles.
	 *
	 * @return the all active vehicles
	 */
	public List<UserVehicle> getAllActiveVehicles();
	
	/**
	 * Gets the active vehicles.
	 *
	 * @param reg the reg
	 * @param state the state
	 * @return the active vehicles
	 */
	public List<UserVehicle> getActiveVehicles(String reg,String state);
	
	/**
	 * Gets the active vehicles.
	 *
	 * @param reg the reg
	 * @param state the state
	 * @param expiry the expiry
	 * @return the active vehicles
	 */
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp expiry);
	
	/**
	 * Gets the active vehicles.
	 *
	 * @param reg the reg
	 * @param state the state
	 * @param start the start
	 * @param expiry the expiry
	 * @return the active vehicles
	 */
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp start,Timestamp expiry);
}
