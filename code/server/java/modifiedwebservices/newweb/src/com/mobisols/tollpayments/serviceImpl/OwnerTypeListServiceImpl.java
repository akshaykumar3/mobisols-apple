package com.mobisols.tollpayments.serviceImpl;

import java.util.List;

import java.util.Iterator;

import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.OwnerType;
import com.mobisols.tollpayments.response.get.OwnerTypeListResponse;
import com.mobisols.tollpayments.service.OwnerTypeListService;

public class OwnerTypeListServiceImpl implements OwnerTypeListService {

	 private OwnerTypeDao ownerTypeDao;
	 private JsonConverter jsonConverter;
		
	 public OwnerTypeListServiceImpl()
	 {
		 
	 }
	@Override
	public String getOwnerTypeList(String request) {
		String status="";
		List<com.mobisols.tollpayments.model.OwnerType> ol=ownerTypeDao.getOwnerTypeList();
		OwnerTypeListResponse ownerTypeListResponse = new OwnerTypeListResponse();
		for(Iterator i=ol.iterator();i.hasNext();)
		{
			com.mobisols.tollpayments.model.OwnerType ot = (com.mobisols.tollpayments.model.OwnerType) i.next();
			OwnerType o = new OwnerType();
			o.setName(ot.getName());
			o.setDescription(ot.getDescription());
			ownerTypeListResponse.getOwnerTypeList().add(o);
		}
		return jsonConverter.getJSON(request, status,ownerTypeListResponse);
	}
	public OwnerTypeDao getOwnerTypeDao() {
		return ownerTypeDao;
	}
	public void setOwnerTypeDao(OwnerTypeDao ownerTypeDao) {
		this.ownerTypeDao = ownerTypeDao;
	}
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}

}
