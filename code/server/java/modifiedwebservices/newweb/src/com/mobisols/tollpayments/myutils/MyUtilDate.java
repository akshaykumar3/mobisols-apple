package com.mobisols.tollpayments.myutils;

import java.sql.Timestamp;
import java.util.Date;

// TODO: Auto-generated Javadoc
/**
 * The Interface MyUtilDate.
 */
public interface MyUtilDate {

	/**
	 * Gets the current time stamp.
	 *
	 * @return the current time stamp
	 */
	public Timestamp getCurrentTimeStamp();

	/**
	 * Gets the current date.
	 *
	 * @return the current date
	 */
	public Date getCurrentDate();
	
	/**
	 * To string.
	 *
	 * @param timestamp the timestamp
	 * @return the string
	 */
	public String toString(Timestamp timestamp);


	/**
	 * To string.
	 *
	 * @param timeStamp the time stamp
	 * @return the object
	 */
	public Object toString(Date timeStamp);


	/**
	 * To time stamp.
	 *
	 * @param string the string
	 * @return the timestamp
	 */
	public Timestamp toTimeStamp(Object string);

}
