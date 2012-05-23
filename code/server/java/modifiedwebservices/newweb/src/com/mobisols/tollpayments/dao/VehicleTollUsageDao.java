package com.mobisols.tollpayments.dao;

import java.sql.Timestamp;
import java.util.List;

import com.mobisols.tollpayments.model.VehicleTollUsage;

// TODO: Auto-generated Javadoc
/**
 * The Interface VehicleTollUsageDao.
 * Used to access the data of the vehicle_toll_usage table of the database.
 */
public interface VehicleTollUsageDao {
	
	/**
	 * Gets the non paid toll usage of each vehicle.
	 *
	 * @return the list of non paid toll usages.
	 */
	public List getNonPaidTollUsageByVehicle();
	
	/**
	 * Gets the non paid toll usage of eachuser.
	 *
	 * @return the list of non paid  toll usage.
	 */
	public List getNonPaidTollUsageByUser();
	
	/**
	 * Gets the non paid tolls of a particular user and a toll operator.
	 *
	 * @param userId the user id of the user
	 * @param tollOperatorId the toll operator id
	 * @return the non paid tolls
	 */
	public List getNonPaidTolls(int userId,int tollOperatorId);
	
	/**
	 * Gets the vehicle toll usage object of the given id.
	 *
	 * @param vehicleTollUsageId the vehicle toll usage id
	 * @return the vehicle toll usage
	 */
	public VehicleTollUsage getVehicleTollUsage(int vehicleTollUsageId);
	
	/**
	 * Saves the vehicle toll usage to the database.
	 *
	 * @param vt the vehicle toll usage object
	 */
	public void save(VehicleTollUsage vt);
	
	/**
	 * Gets the non paid toll usage.
	 *
	 * @return the list of non paid toll usage.
	 */
	public List<VehicleTollUsage> getNonPaidTollUsage();
	public List<VehicleTollUsage> getTollUsage(int tollLocationId,Timestamp fromDate,Timestamp toDate);
}
