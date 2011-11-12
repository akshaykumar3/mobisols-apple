package com.mobisols.tollpayments.dao;

import java.sql.Timestamp;
import java.util.List;
import com.mobisols.tollpayments.model.UserVehicle;

public interface UserVehicleDao {
	public static final String VEHICLE_ACTIVE = "Y";
	public static final String VEHICLE_INACTIVE = "N";
	public static final String VEHICLE_INCOMPLETE = "I";
	public static final String VEHICLE_SUSPEND = "S";
	public static final String VEHICLE_BLOCK = "B";
	public static final String VEHICLE_STANDBY = "T";
	public static final Integer DEFAULT_MODEL = -1;
	
	public UserVehicle getVehicle(String reg,String state,int userId);
	public void update(UserVehicle uv);
	public void delete(UserVehicle uv);
	public void save(UserVehicle uv);
	public UserVehicle getVehicle(int vehicleId);
	public List<UserVehicle> getActiveVehicles();
	public List getStandByVehicles();
	public List<UserVehicle> getAllActiveVehicles();
	public List<UserVehicle> getActiveVehicles(String reg,String state);
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp expiry);
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp start,Timestamp expiry);
}
