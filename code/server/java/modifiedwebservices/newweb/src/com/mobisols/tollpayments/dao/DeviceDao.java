package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

public interface DeviceDao {

	public static final String DEVICE_ACTIVE = ServerConfiguration.getServerConfiguration().getValue("device_active");
	public static final String DEVICE_INACTIVE = ServerConfiguration.getServerConfiguration().getValue("device_inactive");
	public static final String DEVICE_EXISTS=ServerConfiguration.getServerConfiguration().getValue("device_exists");
	public static final String DEVICE_NOT_EXISTS=ServerConfiguration.getServerConfiguration().getValue("device_not_exists");;

	public Device getDevice(String deviceid,String deviceType);

	public void save(Device d);

	public Device getDevice(Integer userId);

	public void update(Device d);
}
