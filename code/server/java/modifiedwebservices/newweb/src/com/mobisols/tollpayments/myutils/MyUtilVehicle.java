package com.mobisols.tollpayments.myutils;

import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The Interface MyUtilVehicle.
 */
public interface MyUtilVehicle {
	
	/**
	 * Checks if is valid registration number.
	 *
	 * @param regNo the reg no
	 * @param state the state
	 * @return true, if is valid registration number
	 */
	public boolean isValidRegistrationNumber(String regNo,String state);
	
	/**
	 * Checks if is valid end date.
	 *
	 * @param endDate the end date
	 * @return true, if is valid end date
	 */
	public boolean isValidEndDate(Date endDate);
}
