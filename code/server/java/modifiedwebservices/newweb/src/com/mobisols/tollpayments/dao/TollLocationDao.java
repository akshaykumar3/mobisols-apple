package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.TollLocation;

// TODO: Auto-generated Javadoc
/**
 * The Interface TollLocationDao.
 */
public interface TollLocationDao {
	
	/**
	 * Gets the toll locations.
	 *
	 * @return the toll locations
	 */
	public List getTollLocations();
	
	/**
	 * Gets the toll location.
	 *
	 * @param latitude the latitude
	 * @param longitude the longitude
	 * @return the toll location
	 */
	public TollLocation getTollLocation(double latitude,double longitude);

	/**
	 * Gets the toll location.
	 *
	 * @param name the name
	 * @return the toll location
	 */
	public TollLocation getTollLocation(String name);
}
