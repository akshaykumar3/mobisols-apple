package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.VehicleMovementLog;

// TODO: Auto-generated Javadoc
/**
 * The Interface VmlDao.
 * Used to access the vehicle_movement_log table of the database.
 */
public interface VmlDao {

	/**
	 * Saves the vehicle movement log to the database.
	 *
	 * @param vml the vml
	 */
	public void save(VehicleMovementLog vml);
}
