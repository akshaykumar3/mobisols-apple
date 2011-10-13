package com.mobisols.tollpayments.serviceImpl;

import java.util.List;

import java.util.Iterator;

import com.mobisols.tollpayments.dao.CcTypeDao;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.CcType;
import com.mobisols.tollpayments.response.get.CcTypeListResponse;
import com.mobisols.tollpayments.service.CcTypeListService;

public class CcTypeListServiceImpl implements CcTypeListService{
	private CcTypeDao ccTypeDao;
	private JsonConverter jsonConverter;
	
    public CcTypeListServiceImpl()
    {
    	
    }
    
    
	@Override
	public String getCcTypeList(String request) {
		List<com.mobisols.tollpayments.model.CcType> cl=ccTypeDao.getCcTypeList();
		String status="";
		CcTypeListResponse ccTypeListResponse = new CcTypeListResponse();
		for(Iterator i=cl.iterator();i.hasNext();)
		{
			com.mobisols.tollpayments.model.CcType ct = (com.mobisols.tollpayments.model.CcType) i.next();
		     CcType c = new CcType();
			c.setName(ct.getName());
			c.setDescription(ct.getDescription());
			ccTypeListResponse.getCcTypeList().add(c);	
		}
		return jsonConverter.getJSON(request, status,ccTypeListResponse);
	}


	public CcTypeDao getCcTypeDao() {
		return ccTypeDao;
	}


	public void setCcTypeDao(CcTypeDao ccTypeDao) {
		this.ccTypeDao = ccTypeDao;
	}


	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}


	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}

}
