package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.Device;

public interface DeviceDao {

	public Device getDevice(String deviceid,String deviceType);
}
