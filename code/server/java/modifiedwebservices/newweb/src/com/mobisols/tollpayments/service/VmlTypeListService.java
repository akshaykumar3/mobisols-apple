package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.VmlTypeDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface VmlTypeListService.
 * Used to send the vehicle movement log types available in the database.
 */
public interface VmlTypeListService {
	
	/** The vml type dao. */
	VmlTypeDao vmlTypeDao  = null;

	
	/**
	 * Gets the vehicle movement log type list.
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @return the json String of vehicle movement log type list similar to com.mobisols.tollpayments.response.VmlTypeListResponse.
	 */
	public String getVmlTypeList(String request);

}
