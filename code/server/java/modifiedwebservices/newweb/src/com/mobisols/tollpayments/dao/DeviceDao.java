package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

/**
 * The Interface DeviceDao.
 * Used to access the data of the Device table.
 */
public interface DeviceDao {

	/** The Constant DEVICE_ACTIVE. */
	public static final String DEVICE_ACTIVE = ServerConfiguration.getServerConfiguration().getValue("device_active");
	
	/** The Constant DEVICE_INACTIVE. */
	public static final String DEVICE_INACTIVE = ServerConfiguration.getServerConfiguration().getValue("device_inactive");
	
	/** The Constant DEVICE_EXISTS. */
	public static final String DEVICE_EXISTS=ServerConfiguration.getServerConfiguration().getValue("device_exists");
	
	/** The Constant DEVICE_NOT_EXISTS. */
	public static final String DEVICE_NOT_EXISTS=ServerConfiguration.getServerConfiguration().getValue("device_not_exists");;

	/**
	 * Gets the device with a given device id and device type
	 *
	 * @param deviceid the deviceid
	 * @param deviceType the device type
	 * @return the device 
	 */
	public Device getDevice(String deviceid,String deviceType);

	/**
	 * Saves the given device object to the database.
	 *
	 * @param d the d
	 */
	public void save(Device d);

	/**
	 * Gets the device with the particular Id.
	 *
	 * @param userId the user id
	 * @return the device
	 */
	public Device getDevice(Integer userId);

	/**
	 * Updates the given device details to the database.
	 *
	 * @param d the d
	 */
	public void update(Device d);
}
