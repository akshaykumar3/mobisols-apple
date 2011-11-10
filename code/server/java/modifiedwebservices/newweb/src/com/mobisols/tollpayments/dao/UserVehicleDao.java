package com.mobisols.tollpayments.dao;

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
	public List<UserVehicle> getActiveVehicles(String username);
	public List getStandByVehicles(String username);
	
}
