package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.OwnerTypeDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface OwnerTypeListService.
 */
public interface OwnerTypeListService {
	
	/** The owner type dao. */
	OwnerTypeDao ownerTypeDao = null;
	
	/**
	 * Gets the owner type list.
	 *
	 * @param request the request
	 * @return the owner type list
	 */
	public String getOwnerTypeList(String request);
	

}
