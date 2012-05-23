package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.OwnerTypeDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface OwnerTypeListService.
 * Used to send the Owner Types available for vehicles.
 */
public interface OwnerTypeListService {
	
	/** The owner type dao. */
	OwnerTypeDao ownerTypeDao = null;
	
	/**
	 * Gets the owner type list.
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @return the json String of owner type list similar to com.mobisols.tollpayments.get.OwnerTypeListResponse. 
	 */
	public String getOwnerTypeList(String request);
	

}
