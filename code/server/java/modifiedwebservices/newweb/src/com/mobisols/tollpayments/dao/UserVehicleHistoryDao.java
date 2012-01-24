package com.mobisols.tollpayments.dao;

import java.util.Date;
import java.util.List;

import com.mobisols.tollpayments.model.UserVehicleHistory;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserVehicleHistoryDao.
 */
public interface UserVehicleHistoryDao {

	/**
	 * Gets the latest uvh id.
	 *
	 * @param userVehicleId the user vehicle id
	 * @return the latest uvh id
	 */
	public int getLatestUvhId(int userVehicleId);
	
	/**
	 * Gets the all active vehicles.
	 *
	 * @return the all active vehicles
	 */
	public List<UserVehicleHistory> getAllActiveVehicles();
	
	/**
	 * Gets the all distinct vehicles.
	 *
	 * @param from the from
	 * @param to the to
	 * @return the all distinct vehicles
	 */
	public List<UserVehicleHistory> getAllDistinctVehicles(int from,int to);
	
	/**
	 * Gets the history.
	 *
	 * @param regNo the reg no
	 * @param state the state
	 * @param from the from
	 * @param to the to
	 * @return the history
	 */
	public List<UserVehicleHistory> getHistory(String regNo,String state,int from,int to);

	/**
	 * Gets the uvh id.
	 *
	 * @param plate the plate
	 * @param state the state
	 * @param date the date
	 * @return the uvh id
	 */
	public UserVehicleHistory getUvhId(String plate, String state, Date date);
}
