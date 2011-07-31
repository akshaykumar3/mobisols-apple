package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.response.get.OwnerTypeListResponse;

public interface OwnerTypeListService extends GeneralService{
	OwnerTypeDao ownerTypeDao = null;
	
	public OwnerTypeListResponse getOwnerTypeList();
	

}
