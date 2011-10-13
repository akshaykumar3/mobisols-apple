package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.CcTypeDao;

public interface CcTypeListService {
	CcTypeDao ccTypeDao=null;
	public String getCcTypeList(String request);

}
