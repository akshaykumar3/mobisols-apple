package com.mobisols.tollpayments.dao;

import java.sql.Timestamp;
import java.util.List;

import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

public interface UserVehicleDao {
	public static final String VEHICLE_ACTIVE = ServerConfiguration.getServerConfiguration().getValue("vehicle_active");
	public static final String VEHICLE_INACTIVE = ServerConfiguration.getServerConfiguration().getValue("vehicle_inactive");
	public static final String VEHICLE_INCOMPLETE = ServerConfiguration.getServerConfiguration().getValue("vehicle_incomplete");
	public static final String VEHICLE_SUSPEND = ServerConfiguration.getServerConfiguration().getValue("vehicle_suspend");
	public static final String VEHICLE_BLOCK = ServerConfiguration.getServerConfiguration().getValue("vehicle_block");
	public static final String VEHICLE_STANDBY = ServerConfiguration.getServerConfiguration().getValue("vehicle_standby");
	public static final Integer DEFAULT_MODEL = Integer.parseInt(ServerConfiguration.getServerConfiguration().getValue("vehicle_default_model"));
	
    
	public UserVehicle getVehicle(String reg,String state,int userId);
	public void update(UserVehicle uv);
	public void delete(UserVehicle uv);
	public void save(UserVehicle uv);
	public UserVehicle getVehicle(int vehicleId);
	public List<UserVehicle> getActiveVehicles(String username);
	public List getStandByVehicles(String username);
	public List<UserVehicle> getAllActiveVehicles();
	public List<UserVehicle> getActiveVehicles(String reg,String state);
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp expiry);
	public List<UserVehicle> getActiveVehicles(String reg,String state,Timestamp start,Timestamp expiry);
}
