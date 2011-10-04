package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.request.post.ActivateRequest;
import com.mobisols.tollpayments.response.post.ActivateResponse;
import com.mobisols.tollpayments.service.ActivateService;

public class ActivateServiceImpl implements ActivateService {

	private UserDao userDao;
	private UserVehicleDao userVehicleDao;
	
	public ActivateResponse activate(ActivateRequest ar,String userName){
		ActivateResponse response = new ActivateResponse();
		User u = userDao.getUser(userName);
		UserVehicle uv = userVehicleDao.getVehicle(ar.getActiveVehicleId());
		boolean isValidVehicle=false;
		if(ar.getActive().equals("Y"))
		{
		if(uv.getIsActive().equals(userVehicleDao.VEHICLE_INACTIVE) || uv.getIsActive().equals(userVehicleDao.VEHICLE_ACTIVE))
		{
			if(uv.getUserId() == u.getUserId())
			{
				userVehicleDao.setActiveVehicle(u.getUserId(),ar.getActiveVehicleId());
				isValidVehicle =true;
				response.getNotifications().add("Vehicle is Active");
			}
			else
			{
				String notify = null;
				if(uv.getIsActive().equals(userVehicleDao.VEHICLE_BLOCK))
					notify = "Vehicle is Blocked";
				if(uv.getIsActive().equals(userVehicleDao.VEHICLE_INCOMPLETE))
					notify = "Vehicle details are incomplete";
				if(uv.getIsActive().equals(userVehicleDao.VEHICLE_SUSPEND))
					notify = "Vehicle is suspended";
				response.getNotifications().add(notify);
			}
		}
		if(u.getIsActive().equals(userDao.USER_INACTIVE) && isValidVehicle)
		{
			u.setIsActive(userDao.USER_ACTIVE);
			userDao.update(u);
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
			response.getNotifications().add(notify);
			response.setActive(u.getIsActive());
		}
		}
		else
		{
			if(u.getIsActive().equals(userDao.USER_ACTIVE) || u.getIsActive().equals(userDao.USER_INACTIVE))
			{
				u.setIsActive(userDao.USER_INACTIVE);
				response.setActive("N");
				response.getNotifications().add("User is Deactivated");
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
				response.getNotifications().add(notify);
				response.setActive(u.getIsActive());
			}
		}
		return response;
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
}
