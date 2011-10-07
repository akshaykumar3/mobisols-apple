package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.Device;

public interface DeviceDao {

	public static final String DEVICE_ACTIVE = "Y";
	public static final String DEVICE_INACTIVE = "N";
	
	public Device getDevice(String deviceid,String deviceType);

	public void save(Device d);

	public Device getDevice(Integer userId);

	public void update(Device d);
}
