package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.VehicleTollUsage;

// TODO: Auto-generated Javadoc
/**
 * The Interface VehicleTollUsageDao.
 */
public interface VehicleTollUsageDao {
	
	/**
	 * Gets the non paid toll usage by vehicle.
	 *
	 * @return the non paid toll usage by vehicle
	 */
	public List getNonPaidTollUsageByVehicle();
	
	/**
	 * Gets the non paid toll usage by user.
	 *
	 * @return the non paid toll usage by user
	 */
	public List getNonPaidTollUsageByUser();
	
	/**
	 * Gets the non paid tolls.
	 *
	 * @param userId the user id
	 * @param tollOperatorId the toll operator id
	 * @return the non paid tolls
	 */
	public List getNonPaidTolls(int userId,int tollOperatorId);
	
	/**
	 * Gets the vehicle toll usage.
	 *
	 * @param vehicleTollUsageId the vehicle toll usage id
	 * @return the vehicle toll usage
	 */
	public VehicleTollUsage getVehicleTollUsage(int vehicleTollUsageId);
	
	/**
	 * Save.
	 *
	 * @param vt the vt
	 */
	public void save(VehicleTollUsage vt);
	
	/**
	 * Gets the non paid toll usage.
	 *
	 * @return the non paid toll usage
	 */
	public List<VehicleTollUsage> getNonPaidTollUsage();
}
