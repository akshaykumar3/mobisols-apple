package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.DeviceRegistrationRequest;
import com.mobisols.tollpayments.response.post.DeviceRegistrationResponse;
import com.mobisols.tollpayments.service.DeviceRegistrationService;

public class DeviceRegistrationServiceImpl implements DeviceRegistrationService {
	private DeviceDao deviceDao;
	private MyUtilDate mydateUtil;
	
	public DeviceRegistrationResponse registerDevice(DeviceRegistrationRequest r)
	{
		DeviceRegistrationResponse response=new DeviceRegistrationResponse();
		String deviceId=r.getIpAddress()+mydateUtil.getCurrentTimeStamp();
		Device d=new Device();
		d.setClientId(1);
		d.setCreatedOn(mydateUtil.getCurrentTimeStamp());
		d.setDeviceUuid(deviceId);
		d.setDeviceType(r.getDeviceName());
		d.setIsActive("n");
		d.setLastModifiedBy(-1);
		d.setLastModifiedOn(mydateUtil.getCurrentTimeStamp());
		d.setUserId(-1);
		d.setVehicleId(-1);
		deviceDao.save(d);
		response.setDeviceId(deviceId);
		response.setIpAddress(r.getIpAddress());
		return response;
	}
	public DeviceDao getDeviceDao() {
		return deviceDao;
	}

	public void setDeviceDao(DeviceDao deviceDao) {
		this.deviceDao = deviceDao;
	}
	public MyUtilDate getMydateUtil() {
		return mydateUtil;
	}
	public void setMydateUtil(MyUtilDate mydateUtil) {
		this.mydateUtil = mydateUtil;
	}
	
}
