package com.mobisols.tollpayments.dao;

import java.util.Date;
import java.util.List;

import com.mobisols.tollpayments.model.UserVehicleHistory;

public interface UserVehicleHistoryDao {

	public int getLatestUvhId(int userVehicleId);

	public List<UserVehicleHistory> getAllActiveVehicles();
	public List<UserVehicleHistory> getAllDistinctVehicles(int from,int to);
	public List<UserVehicleHistory> getHistory(String regNo,String state,int from,int to);

	public UserVehicleHistory getUvhId(String plate, String state, Date date);
}
