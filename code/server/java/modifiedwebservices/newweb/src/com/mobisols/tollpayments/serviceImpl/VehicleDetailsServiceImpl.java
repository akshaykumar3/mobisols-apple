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
import com.mobisols.tollpayments.request.post.VehicleDetailsRequest;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.VehicleDetailsService;

public class VehicleDetailsServiceImpl implements VehicleDetailsService {

	private UserVehicleDao userVehicleDao;
	private UserDao userDao;
	private MyUtilDate myUtilDate;
	private OwnerTypeDao ownerTypeDao;
	private VehicleTypeDao vehicleTypeDao;
	public static final String IS_NEW_VEHICLE_TRUE="Y";
	public static final String IS_NEW_VEHICLE_FALSE="N";
	
	public GeneralResponse postVehicleDetails(VehicleDetailsRequest vdr,String user,String isNewVehicle)
	{
		GeneralResponse response = new GeneralResponse();
		if(isNewVehicle==IS_NEW_VEHICLE_FALSE)
		{
			User u=userDao.getUser(user);
			UserVehicle uv=userVehicleDao.getVehicle(vdr.getRegistration(), vdr.getState(),u.getUserId());
			uv.setIsActive(vdr.getIsActive());
			uv.setVehicleStartDate(new Timestamp(vdr.getStartDate().getTime()));
			uv.setVehicleEndDate(new Timestamp(vdr.getEndDate().getTime()));
			OwnerType ot=ownerTypeDao.getOwnerType(vdr.getOwnerType());			
			uv.setOwnerTypeId(ot.getOwnerTypeId());
			uv.setLastModifiedBy(u.getUserId());
			uv.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			userVehicleDao.update(uv);
			response.setDescription("vehicle Details updated");
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
			response.setDescription("New car added");
			userVehicleDao.save(uv);
		}
		return response;
	}
	
	public GeneralResponse deleteVehicle(VehicleDetailsRequest vdr,String user)
	{
		GeneralResponse response = new GeneralResponse();
		User u=userDao.getUser(user);
		UserVehicle uv=userVehicleDao.getVehicle(vdr.getRegistration(), vdr.getState(), u.getUserId());
		if(uv==null)
			response.setDescription("error in deleting the user vehicle");
		else
		{
			userVehicleDao.delete(uv);
			response.setDescription("Vehicle is deleted");
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
}
