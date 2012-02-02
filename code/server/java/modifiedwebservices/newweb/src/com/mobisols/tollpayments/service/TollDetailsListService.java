package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.TollLocationDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface TollDetailsListService.
 * Used to get the toll location details
 */
public interface TollDetailsListService {

	/** The toll location dao. */
	TollLocationDao tollLocationDao=null;
	
	/**
	 * Gets all the toll locations available in the database..
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @return the json String of toll locations similar to com.mobisols.tollpayments.resopnse.get.TollDetailsResponse.
	 */
	public String getTollLocations(String request);
	
	/**
	 * Gets the toll locations with in the given rectangular area..
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @param lat1 the top left corner latitude of rectangular area.
	 * @param long1 the top left corner longitude of the rectangular area.
	 * @param lat2 the bottom right corner latitude of rectangular area.
	 * @param long2 the bottom tight corner longitude of rectangular area.
	 * @return the json String of toll locations similar to com.mobisols.tollpayments.response.get.TollDetailsRequest.
	 */
	public String getTollLocations(String request,double lat1,double long1,double lat2,double long2);
}
