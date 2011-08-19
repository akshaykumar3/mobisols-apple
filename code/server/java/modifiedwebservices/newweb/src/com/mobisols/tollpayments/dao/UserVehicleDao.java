package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.UserVehicle;

public interface UserVehicleDao {

	public UserVehicle getVehicle(String reg,String state,int userId);
	public void update(UserVehicle uv);
	public void delete(UserVehicle uv);
	public void save(UserVehicle uv);
}
