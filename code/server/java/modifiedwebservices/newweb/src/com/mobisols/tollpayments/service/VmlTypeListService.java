package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.VmlTypeDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface VmlTypeListService.
 */
public interface VmlTypeListService {
	
	/** The vml type dao. */
	VmlTypeDao vmlTypeDao  = null;

	
	/**
	 * Gets the vml type list.
	 *
	 * @param request the request
	 * @return the vml type list
	 */
	public String getVmlTypeList(String request);

}
