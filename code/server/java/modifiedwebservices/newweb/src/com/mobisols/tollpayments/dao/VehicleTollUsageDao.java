package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.VehicleTollUsage;

public interface VehicleTollUsageDao {
	public List getNonPaidTollUsageByVehicle();
	public List getNonPaidTollUsageByUser();
	public List getNonPaidTolls(int userId,int tollOperatorId);
	public VehicleTollUsage getVehicleTollUsage(int vehicleTollUsageId);
	public void save(VehicleTollUsage vt);
	public List<VehicleTollUsage> getNonPaidTollUsage();
}
