package com.mobisols.tollpayments.serviceImpl;

import java.util.List;

import java.util.Iterator;

import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.response.get.OwnerType;
import com.mobisols.tollpayments.response.get.OwnerTypeListResponse;
import com.mobisols.tollpayments.service.OwnerTypeListService;

public class OwnerTypeListServiceImpl implements OwnerTypeListService {

	 private OwnerTypeDao ownerTypeDao;
	 public OwnerTypeListServiceImpl()
	 {
		 
	 }
	@Override
	public OwnerTypeListResponse getOwnerTypeList() {
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
		return ownerTypeListResponse;
	}
	public OwnerTypeDao getOwnerTypeDao() {
		return ownerTypeDao;
	}
	public void setOwnerTypeDao(OwnerTypeDao ownerTypeDao) {
		this.ownerTypeDao = ownerTypeDao;
	}

}
