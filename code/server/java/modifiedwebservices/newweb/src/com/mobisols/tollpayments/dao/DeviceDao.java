package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Interface DeviceDao.
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
	 * Gets the device.
	 *
	 * @param deviceid the deviceid
	 * @param deviceType the device type
	 * @return the device
	 */
	public Device getDevice(String deviceid,String deviceType);

	/**
	 * Save.
	 *
	 * @param d the d
	 */
	public void save(Device d);

	/**
	 * Gets the device.
	 *
	 * @param userId the user id
	 * @return the device
	 */
	public Device getDevice(Integer userId);

	/**
	 * Update.
	 *
	 * @param d the d
	 */
	public void update(Device d);
}
