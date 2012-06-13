package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;

import com.mobisols.tollpayments.dao.DeviceDao;
import com.mobisols.tollpayments.dao.ModelDao;
import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleDao;
import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.model.Model;
import com.mobisols.tollpayments.model.OwnerType;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutils.MyUtilVehicle;
import com.mobisols.tollpayments.request.post.VehicleDetailsRequest;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.response.post.VehicleDetailsResponse;
import com.mobisols.tollpayments.service.VehicleDetailsService;

// TODO: Auto-generated Javadoc
/**
 * The Class VehicleDetailsServiceImpl.
 */
public class VehicleDetailsServiceImpl implements VehicleDetailsService {

	/** The user vehicle dao. */
	private UserVehicleDao userVehicleDao;
	
	/** The user dao. */
	private UserDao userDao;
	
	/** The my util date. */
	private MyUtilDate myUtilDate;
	
	/** The my util vehicle. */
	private MyUtilVehicle myUtilVehicle;
	
	/** The owner type dao. */
	private OwnerTypeDao ownerTypeDao;
	
	/** The vehicle type dao. */
	private VehicleTypeDao vehicleTypeDao;
	
	/** The device dao. */
	private DeviceDao deviceDao;
	
	/** The model dao. */
	private ModelDao modelDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	

	/** The Constant IS_NEW_VEHICLE_TRUE. */
	public static final String IS_NEW_VEHICLE_TRUE="Y";
	
	/** The Constant IS_NEW_VEHICLE_FALSE. */
	public static final String IS_NEW_VEHICLE_FALSE="N";
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.VehicleDetailsService#postVehicleDetails(java.lang.String, com.mobisols.tollpayments.request.post.VehicleDetailsRequest, java.lang.String, java.lang.String)
	 */
	public String postVehicleDetails(String request,VehicleDetailsRequest vdr,String user,String isNewVehicle)
	{
		String status="success";
		VehicleDetailsResponse response = new VehicleDetailsResponse();
		
		if(myUtilVehicle.isValidRegistrationNumber(vdr.getRegistration(), vdr.getState()) && myUtilVehicle.isValidEndDate(vdr.getEndDate()))
		{
			//TODO ignore the variable and insert the vehicle if the details are not null
		if(isNewVehicle.equals(IS_NEW_VEHICLE_FALSE))
		{
			User u=userDao.getUser(user);
			UserVehicle uv=userVehicleDao.getVehicle(vdr.getRegistration(), vdr.getState(),u.getUserId());
			if(uv==null)
			{
				status ="fail";
				response.getNotifications().add("Invalid VehicleId");
				return jsonConverter.getJSON(request, status,response);
			}
			if(vdr.getIsActive().equals(UserVehicleDao.VEHICLE_ACTIVE) && u.getIsActive().equals(UserDao.USER_ACTIVE))
				uv.setIsActive(UserVehicleDao.VEHICLE_ACTIVE);
			else if(vdr.getIsActive().equals(UserVehicleDao.VEHICLE_ACTIVE) && u.getIsActive().equals(UserDao.USER_INACTIVE))
				uv.setIsActive(UserVehicleDao.VEHICLE_STANDBY);
			else if(u.getIsActive().equals(UserDao.USER_INCOMPLETE))
				uv.setIsActive(UserVehicleDao.VEHICLE_STANDBY);
			
			uv.setVehicleStartDate(new Timestamp(vdr.getStartDate().getTime()));
			if(vdr.getEndDate() !=null)
				uv.setVehicleEndDate(new Timestamp(vdr.getEndDate().getTime()));
			OwnerType ot=ownerTypeDao.getOwnerType(vdr.getOwnerType());			
			uv.setOwnerTypeId(ot.getOwnerTypeId());
			uv.setLastModifiedBy(u.getUserId());
			uv.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
			if(vdr.getModel()!=null && vdr.getMake()!=null)
			{
				Model m = modelDao.getModel(vdr.getMake(), vdr.getModel());
			if(m!=null)
				uv.setModelId(m.getModelId());
			}
			uv.setVin(vdr.getVin());
			uv.setColor(vdr.getColor());
			uv.setManufacturedYear(vdr.getManufacturedYear());
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
			if(vdr.getIsActive().equals(UserVehicleDao.VEHICLE_ACTIVE) && u.getIsActive().equals(UserDao.USER_ACTIVE))
				uv.setIsActive(UserVehicleDao.VEHICLE_ACTIVE);
			else if(vdr.getIsActive().equals(UserVehicleDao.VEHICLE_ACTIVE) && u.getIsActive().equals(UserDao.USER_INACTIVE))
				uv.setIsActive(UserVehicleDao.VEHICLE_STANDBY);
			else if(u.getIsActive().equals(UserDao.USER_INCOMPLETE))
				uv.setIsActive(UserVehicleDao.VEHICLE_STANDBY);
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
			System.out.println(vdr.getMake());
			System.out.println(vdr.getModel());
			if(vdr.getModel()!=null && vdr.getMake()!=null)
			{
				Model m = modelDao.getModel(vdr.getMake(), vdr.getModel());
			if(m!=null)
				uv.setModelId(m.getModelId());
			else
				System.out.println("model is null");
			}
			uv.setVin(vdr.getVin());
			uv.setColor(vdr.getColor());
			uv.setManufacturedYear(vdr.getManufacturedYear());
			userVehicleDao.save(uv);
			uv = userVehicleDao.getVehicle(uv.getRegistrationNo(), uv.getRegisteredState(), u.getUserId());
			response.setVehicleId(uv.getUserVehicleId());
			response.getNotifications().add("New Vehicle Added");
		}
		}
		else
		{
			status = "fail";
			response.getNotifications().add("InValid Registration number");
			response.setVehicleId(-1);
		}
		return jsonConverter.getJSON(request, status,response);
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.VehicleDetailsService#deleteVehicle(java.lang.String, int, java.lang.String)
	 */
	public String deleteVehicle(String request,int vehicleId,String user)
	{
		String status="success";
		GeneralResponse response = new GeneralResponse();
		User u=userDao.getUser(user);
		UserVehicle uv= userVehicleDao.getVehicle(vehicleId);
		System.out.println(vehicleId);
		if(uv.getUserId().equals(u.getUserId()))
		{
			userVehicleDao.delete(uv);
			response.setDescription("Vehicle is deleted");
		}
		else
		{
			status = "fail";
			response.setDescription("Invalid Vehicle");
		}
		return jsonConverter.getJSON(request, status,response);
	}
	
	/**
	 * Gets the user vehicle dao.
	 *
	 * @return the user vehicle dao
	 */
	public UserVehicleDao getUserVehicleDao() {
		return userVehicleDao;
	}

	/**
	 * Sets the user vehicle dao.
	 *
	 * @param userVehicleDao the new user vehicle dao
	 */
	public void setUserVehicleDao(UserVehicleDao userVehicleDao) {
		this.userVehicleDao = userVehicleDao;
	}
	
	/**
	 * Gets the user dao.
	 *
	 * @return the user dao
	 */
	public UserDao getUserDao() {
		return userDao;
	}
	
	/**
	 * Sets the user dao.
	 *
	 * @param userDao the new user dao
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
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
	 * Gets the owner type dao.
	 *
	 * @return the owner type dao
	 */
	public OwnerTypeDao getOwnerTypeDao() {
		return ownerTypeDao;
	}
	
	/**
	 * Sets the owner type dao.
	 *
	 * @param ownerTypeDao the new owner type dao
	 */
	public void setOwnerTypeDao(OwnerTypeDao ownerTypeDao) {
		this.ownerTypeDao = ownerTypeDao;
	}
	
	/**
	 * Gets the vehicle type dao.
	 *
	 * @return the vehicle type dao
	 */
	public VehicleTypeDao getVehicleTypeDao() {
		return vehicleTypeDao;
	}
	
	/**
	 * Sets the vehicle type dao.
	 *
	 * @param vehicleTypeDao the new vehicle type dao
	 */
	public void setVehicleTypeDao(VehicleTypeDao vehicleTypeDao) {
		this.vehicleTypeDao = vehicleTypeDao;
	}

	/**
	 * Gets the my util vehicle.
	 *
	 * @return the my util vehicle
	 */
	public MyUtilVehicle getMyUtilVehicle() {
		return myUtilVehicle;
	}

	/**
	 * Sets the my util vehicle.
	 *
	 * @param myUtilVehicle the new my util vehicle
	 */
	public void setMyUtilVehicle(MyUtilVehicle myUtilVehicle) {
		this.myUtilVehicle = myUtilVehicle;
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

	/**
	 * Gets the model dao.
	 *
	 * @return the model dao
	 */
	public ModelDao getModelDao() {
		return modelDao;
	}

	/**
	 * Sets the model dao.
	 *
	 * @param modelDao the new model dao
	 */
	public void setModelDao(ModelDao modelDao) {
		this.modelDao = modelDao;
	}

}
