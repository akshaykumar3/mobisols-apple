package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.TollLocationDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface TollDetailsListService.
 */
public interface TollDetailsListService {

	/** The toll location dao. */
	TollLocationDao tollLocationDao=null;
	
	/**
	 * Gets the toll locations.
	 *
	 * @param request the request
	 * @return the toll locations
	 */
	public String getTollLocations(String request);
	
	/**
	 * Gets the toll locations.
	 *
	 * @param request the request
	 * @param lat1 the lat1
	 * @param long1 the long1
	 * @param lat2 the lat2
	 * @param long2 the long2
	 * @return the toll locations
	 */
	public String getTollLocations(String request,double lat1,double long1,double lat2,double long2);
}
