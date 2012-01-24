package com.mobisols.tollpayments.dao;

// TODO: Auto-generated Javadoc
/**
 * The Interface DeviceHistoryDao.
 */
public interface DeviceHistoryDao {

	/**
	 * Gets the latest device history id.
	 *
	 * @param deviceId the device id
	 * @return the latest device history id
	 */
	Integer getLatestDeviceHistoryId(Integer deviceId);

}
