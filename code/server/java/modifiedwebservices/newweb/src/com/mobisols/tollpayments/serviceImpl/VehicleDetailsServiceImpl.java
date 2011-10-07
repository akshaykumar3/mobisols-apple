package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;

import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.model.OwnerType;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.model.VehicleType;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutils.MyUtilVehicle;
import com.mobisols.tollpayments.request.post.VehicleDetailsRequest;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.response.post.VehicleDetailsResponse;
import com.mobisols.tollpayments.service.VehicleDetailsService;

public class VehicleDetailsServiceImpl implements VehicleDetailsService {

	private UserVehicleDao userVehicleDao;
	private UserDao userDao;
	private MyUtilDate myUtilDate;
	private MyUtilVehicle myUtilVehicle;
	private OwnerTypeDao ownerTypeDao;
	private VehicleTypeDao vehicleTypeDao;
	public static final String IS_NEW_VEHICLE_TRUE="Y";
	public static final String IS_NEW_VEHICLE_FALSE="N";
	
	public VehicleDetailsResponse postVehicleDetails(VehicleDetailsRequest vdr,String user,String isNewVehicle)
	{
		VehicleDetailsResponse response = new VehicleDetailsResponse();
		
		if(myUtilVehicle.isValidRegistrationNumber(vdr.getRegistration(), vdr.getState()))
		{
		if(isNewVehicle.equals(IS_NEW_VEHICLE_FALSE))
		{
			User u=userDao.getUser(user);
			UserVehicle uv=userVehicleDao.getVehicle(vdr.getRegistration(), vdr.getState(),u.getUserId());
			if(uv==null)
				System.out.println("usser vehicle is null");
			uv.setIsActive(vdr.getIsActive());
			uv.setVehicleStartDate(new Timestamp(vdr.getStartDate().getTime()));
			uv.setVehicleEndDate(new Timestamp(vdr.getEndDate().getTime()));
			OwnerType ot=ownerTypeDao.getOwnerType(vdr.getOwnerType());			
			uv.setOwnerTypeId(ot.getOwnerTypeId());
			uv.setLastModifiedBy(u.getUserId());
			uv.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			uv.setModelId(userVehicleDao.DEFAULT_MODEL);
			uv.setVin(null);
			userVehicleDao.update(uv);
			response.setVehicleId(uv.getUserVehicleId());
			response.getNotifications().add("Vehicle Details Updated");
		}
		else
		{
			User u=userDao.getUser(user);
			UserVehicle uv=new UserVehicle();
			uv.setClientId(1);
			uv.setUserId(u.getUserId());
			uv.setCreatedOn(myUtilDate.getCurrentTimeStamp());
			uv.setIsActive(vdr.getIsActive());
			uv.setLastModifiedBy(u.getUserId());
			uv.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			OwnerType ot=ownerTypeDao.getOwnerType(vdr.getOwnerType());			
			uv.setOwnerTypeId(ot.getOwnerTypeId());
			uv.setRegisteredState(vdr.getState());
			uv.setRegistrationNo(vdr.getRegistration());
			if(vdr.getEndDate()!=null)
			uv.setVehicleEndDate(new Timestamp(vdr.getEndDate().getTime()));
			if(vdr.getStartDate()!=null)
			uv.setVehicleStartDate(new Timestamp(vdr.getStartDate().getTime()));
			VehicleType vt=vehicleTypeDao.getVehicleType(vdr.getType());
			uv.setVehicleTypeId(vt.getVehicleTypeId());
			userVehicleDao.save(uv);
			uv = userVehicleDao.getVehicle(uv.getRegistrationNo(), uv.getRegisteredState(), u.getUserId());
			response.setVehicleId(uv.getUserVehicleId());
			response.getNotifications().add("New Vehicle Added");
		}
		}
		else
		{
			response.getNotifications().add("InValid Registration number");
			response.setVehicleId(-1);
		}
		return response;
	}
	
	public GeneralResponse deleteVehicle(int vehicleId,String user)
	{
		GeneralResponse response = new GeneralResponse();
		User u=userDao.getUser(user);
		UserVehicle uv= userVehicleDao.getVehicle(vehicleId);
		if(uv.getUserId().equals(u.getUserId()))
		{
			userVehicleDao.delete(uv);
			response.setDescription("Vehicle is deleted");
		}
		else
		{
			response.setDescription("User does not have this vehicle");
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
	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}
	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}
	public OwnerTypeDao getOwnerTypeDao() {
		return ownerTypeDao;
	}
	public void setOwnerTypeDao(OwnerTypeDao ownerTypeDao) {
		this.ownerTypeDao = ownerTypeDao;
	}
	public VehicleTypeDao getVehicleTypeDao() {
		return vehicleTypeDao;
	}
	public void setVehicleTypeDao(VehicleTypeDao vehicleTypeDao) {
		this.vehicleTypeDao = vehicleTypeDao;
	}

	public MyUtilVehicle getMyUtilVehicle() {
		return myUtilVehicle;
	}

	public void setMyUtilVehicle(MyUtilVehicle myUtilVehicle) {
		this.myUtilVehicle = myUtilVehicle;
	}
}
