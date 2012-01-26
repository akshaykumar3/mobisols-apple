package com.mobisols.tollpayments.dao;

// TODO: Auto-generated Javadoc
/**
 * The Interface DeviceHistoryDao.
 * Used to access the data of the device History table.
 */
public interface DeviceHistoryDao {

	/**
	 * Gets the latest device history id of a the device with the given Id.
	 *
	 * @param deviceId the device id
	 * @return the latest device history id
	 */
	Integer getLatestDeviceHistoryId(Integer deviceId);

}
