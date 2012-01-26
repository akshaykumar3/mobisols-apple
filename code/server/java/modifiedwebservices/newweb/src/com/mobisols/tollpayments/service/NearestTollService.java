package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.myutils.TollLocationUtil;

// TODO: Auto-generated Javadoc
/**
 * The Interface NearestTollService.
 */
public interface NearestTollService {

	/** The toll location util. */
	TollLocationUtil tollLocationUtil=null;
	
	/** The toll location dao. */
	TollLocationDao tollLocationDao=null;
	
	/**
	 * Gets the nearest toll.
	 *
	 * @param request the request
	 * @param lat the lat
	 * @param longt the longt
	 * @return the nearest toll
	 */
	public String getNearestToll(String request,double lat,double longt);
}
