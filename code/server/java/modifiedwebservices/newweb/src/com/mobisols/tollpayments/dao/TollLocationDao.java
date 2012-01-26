package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.TollLocation;

// TODO: Auto-generated Javadoc
/**
 * The Interface TollLocationDao.
 * Used to access the toll_location table of the database.
 */
public interface TollLocationDao {
	
	/**
	 * Gets the list of all toll locations in the database.
	 *
	 * @return the toll locations
	 */
	public List getTollLocations();
	
	/**
	 * Gets the toll location which is at the given latitude and longitude.
	 *
	 * @param latitude the latitude
	 * @param longitude the longitude
	 * @return the toll location
	 */
	public TollLocation getTollLocation(double latitude,double longitude);

	/**
	 * Gets the toll location whose name is given.
	 *
	 * @param name the name of the toll location.
	 * @return the toll location
	 */
	public TollLocation getTollLocation(String name);
}
