package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.CcTypeDao;

/**
 * The Interface CcTypeListService.
 * Used to respond to the requests related to Credit Card type.
 */
public interface CcTypeListService {
	
	/** The cc type dao. */
	CcTypeDao ccTypeDao=null;
	
	/**
	 * Gets Credit Card type Lists.
	 *
	 * @param request the name of webservice request from which the function is called.
 	 * @return the json format of Credit Card Type list similar to the object com.mobisols.tollapyments.response.get.CcTypeListResponse.
	 */
	public String getCcTypeList(String request);

}
