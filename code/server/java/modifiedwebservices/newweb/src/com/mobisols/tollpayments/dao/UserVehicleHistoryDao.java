package com.mobisols.tollpayments.dao;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.mobisols.tollpayments.model.UserVehicleHistory;

// TODO: Auto-generated Javadoc
/**
 * The Interface UserVehicleHistoryDao.
 */
public interface UserVehicleHistoryDao {

	/**
	 * Gets the latest vehicle history id of the given vehicle.
	 *
	 * @param userVehicleId the user vehicle id
	 * @return the latest vehicle history id
	 */
	public int getLatestUvhId(int userVehicleId);
	
	/**
	 * Gets the all active vehicles from the history table.
	 *
	 * @return the all active vehicles
	 */
	public List<UserVehicleHistory> getAllActiveVehicles();
	
	/**
	 * Gets the all distinct vehicles with the given range of vehicle history id .
	 *
	 * @param from the from
	 * @param to the to
	 * @return the all distinct vehicles in the given range
 	 */
	public List<UserVehicleHistory> getAllDistinctVehicles(int from,int to);
	
	/**
	 * Gets all the history of the vehicle with the given registration number, registered state with in the given range.
	 *
	 * @param regNo the registration number of the vehicle
	 * @param state the registered state of the vehicle
	 * @param from the starting id of the the range
	 * @param to the ending id of the range.
	 * @return the list of UserVehicleHistory objects
	 */
	public List<UserVehicleHistory> getHistory(String regNo,String state,int from,int to);

	/**
	 * Gets the UserVehicleHistory of the given vehicle on the givendate.
	 *
	 * @param plate the registration number of the vehicle
	 * @param state the registered state of the vehicle
	 * @param date the date
	 * @return the UserVehicleHistory object.
	 */
	public UserVehicleHistory getUvh(String plate, String state, Date date);

	/**
	 * @param userVehicleId
	 * @return
	 */
	public Timestamp getDateAdded(Integer userVehicleId);

	/**
	 * @param userVehicleId
	 * @return
	 */
	public Timestamp getDateDeleted(Integer userVehicleId);
	
	public List<UserVehicleHistory> getVehicleHistory(int vehicleId,Timestamp fromDate, Timestamp toDate);
}
