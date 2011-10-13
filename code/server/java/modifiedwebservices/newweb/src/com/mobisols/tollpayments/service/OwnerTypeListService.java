package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.OwnerTypeDao;

public interface OwnerTypeListService {
	OwnerTypeDao ownerTypeDao = null;
	
	public String getOwnerTypeList(String request);
	

}
