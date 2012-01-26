package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.CcTypeDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface CcTypeListService.
 */
public interface CcTypeListService {
	
	/** The cc type dao. */
	CcTypeDao ccTypeDao=null;
	
	/**
	 * Gets the cc type list.
	 *
	 * @param request the request
	 * @return the cc type list
	 */
	public String getCcTypeList(String request);

}
