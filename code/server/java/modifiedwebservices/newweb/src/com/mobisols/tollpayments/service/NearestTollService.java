package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.myutils.TollLocationUtil;

// TODO: Auto-generated Javadoc
/**
 * The Interface NearestTollService.
 * Used to find the Nearest Toll Location.
 */
public interface NearestTollService {

	/** The toll location util. */
	TollLocationUtil tollLocationUtil=null;
	
	/** The toll location dao. */
	TollLocationDao tollLocationDao=null;
	
	/**
	 * Gets the nearest toll to the location that is recieved in request.. 
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @param lat the latitude 
	 * @param longt the longitude
	 * @return the json String similar to the com.mobisols.tollpayments.response.get.NearestTollLocation.
	 */
	public String getNearestToll(String request,double lat,double longt);
}
