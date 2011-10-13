package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.model.Device;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.post.ActivateRequest;
import com.mobisols.tollpayments.response.post.ActivateResponse;
import com.mobisols.tollpayments.service.ActivateService;

public class ActivateServiceImpl implements ActivateService {

	private UserDao userDao;
	private UserVehicleDao userVehicleDao;
	private DeviceDao deviceDao;
	private JsonConverter jsonConverter;
	
	public String activate(String request,ActivateRequest ar,String userName){
		ActivateResponse response = new ActivateResponse();
		String status=""; 
		User u = userDao.getUser(userName);
		
		if(ar.getActive().equals("Y"))
		{
			List standByVehicles = userVehicleDao.getStandByVehicles();
			if(standByVehicles.isEmpty())
			{
				response.getNotifications().add("No Vehicle is Active");
			}
			else if(u.getIsActive().equals(userDao.USER_INACTIVE))
			{
				for(Iterator<UserVehicle> it = standByVehicles.iterator();it.hasNext();)
				{
					UserVehicle uv = it.next();
					uv.setIsActive(userVehicleDao.VEHICLE_ACTIVE);
					userVehicleDao.update(uv);
				}
				u.setIsActive(userDao.USER_ACTIVE);
				userDao.update(u);
				Device d = deviceDao.getDevice(u.getUserId());
				d.setIsActive(deviceDao.DEVICE_ACTIVE);
				deviceDao.update(d);
				response.setActive(userDao.USER_ACTIVE);
			}
			else
			{
				String notify = null;
				if(u.getIsActive().equals(userDao.USER_BLOCK))
					notify = "User is Blocked";
				if(u.getIsActive().equals(userDao.USER_INCOMPLETE))
					notify = "User details are incomplete";
				if(u.getIsActive().equals(userDao.USER_SUSPEND))
					notify = "User is suspended";
				else
					notify = "User is already Inactive";
				response.getNotifications().add(notify);
				response.setActive(u.getIsActive());
			}
		}
		else if(ar.getActive().equals("N"))
		{
			if(u.getIsActive().equals(userDao.USER_ACTIVE))
			{
				List activeVehicles = userVehicleDao.getStandByVehicles();
				for(Iterator<UserVehicle> it = activeVehicles.iterator();it.hasNext();)
				{
					UserVehicle uv = it.next();
					uv.setIsActive(userVehicleDao.VEHICLE_STANDBY);
					userVehicleDao.update(uv);
				}
				u.setIsActive(userDao.USER_INACTIVE);
				userDao.update(u);
				Device d = deviceDao.getDevice(u.getUserId());
				//d.setVehicleId(-1);
				d.setIsActive(deviceDao.DEVICE_INACTIVE);
				deviceDao.update(d);
				response.setActive("N");
				response.getNotifications().add("User is Deactivated");
			}
			else
			{
				String notify = "User is already Inactive";
				response.getNotifications().add(notify);
				response.setActive(u.getIsActive());
			}
		}
		return jsonConverter.getJSON(request, status,response);
	}

	public UserVehicleDao getUserVehicleDao() {
		return userVehicleDao;
	}

	public void setUserVehicleDao(UserVehicleDao userVehicleDao) {
		this.userVehicleDao = userVehicleDao;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public DeviceDao getDeviceDao() {
		return deviceDao;
	}

	public void setDeviceDao(DeviceDao deviceDao) {
		this.deviceDao = deviceDao;
	}

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
