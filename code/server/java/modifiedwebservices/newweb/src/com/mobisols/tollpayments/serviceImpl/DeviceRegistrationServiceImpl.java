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

public class DeviceRegistrationServiceImpl implements DeviceRegistrationService {
	private DeviceDao deviceDao;
	private MyUtilDate myUtilDate;
	private JsonConverter jsonConverter;
	
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
	public DeviceDao getDeviceDao() {
		return deviceDao;
	}

	public void setDeviceDao(DeviceDao deviceDao) {
		this.deviceDao = deviceDao;
	}
	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}
	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
	
}
