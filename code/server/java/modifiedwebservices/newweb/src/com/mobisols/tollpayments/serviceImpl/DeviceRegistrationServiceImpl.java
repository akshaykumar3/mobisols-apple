package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.DeviceRegistrationRequest;
import com.mobisols.tollpayments.response.post.DeviceRegistrationResponse;
import com.mobisols.tollpayments.service.DeviceRegistrationService;

// TODO: Auto-generated Javadoc
/**
 * The Class DeviceRegistrationServiceImpl.
 */
public class DeviceRegistrationServiceImpl implements DeviceRegistrationService {
	
	/** The device dao. */
	private DeviceDao deviceDao;
	
	/** The my util date. */
	private MyUtilDate myUtilDate;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.DeviceRegistrationService#registerDevice(java.lang.String, com.mobisols.tollpayments.request.post.DeviceRegistrationRequest, java.lang.String)
	 */
	public String registerDevice(String request,DeviceRegistrationRequest r,String ipAddress)
	{
		DeviceRegistrationResponse response=new DeviceRegistrationResponse();
		String status="success";
		String deviceId=ipAddress+myUtilDate.getCurrentTimeStamp();
		Device d=new Device();
		d.setClientId(1);
		d.setCreatedOn(myUtilDate.getCurrentTimeStamp());
		d.setDeviceUuid(deviceId);
		d.setDeviceType(r.getDeviceName());
		d.setIsActive(DeviceDao.DEVICE_INACTIVE);
		d.setLastModifiedBy(UserDao.DEFAULT_USER);
		d.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
		d.setUserId(UserDao.DEFAULT_USER);
		deviceDao.save(d);
		response.setDeviceId(deviceId);
		response.setIpAddress(ipAddress);
		return jsonConverter.getJSON(request, status,response);
	}
	
	/**
	 * Gets the device dao.
	 *
	 * @return the device dao
	 */
	public DeviceDao getDeviceDao() {
		return deviceDao;
	}

	/**
	 * Sets the device dao.
	 *
	 * @param deviceDao the new device dao
	 */
	public void setDeviceDao(DeviceDao deviceDao) {
		this.deviceDao = deviceDao;
	}
	
	/**
	 * Gets the my util date.
	 *
	 * @return the my util date
	 */
	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}
	
	/**
	 * Sets the my util date.
	 *
	 * @param myUtilDate the new my util date
	 */
	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}
	
	/**
	 * Gets the json converter.
	 *
	 * @return the json converter
	 */
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	
	/**
	 * Sets the json converter.
	 *
	 * @param jsonConverter the new json converter
	 */
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
	
}
