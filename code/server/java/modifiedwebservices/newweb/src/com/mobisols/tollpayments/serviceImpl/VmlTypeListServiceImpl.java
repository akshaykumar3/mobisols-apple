package com.mobisols.tollpayments.serviceImpl;

import java.util.List;

import java.util.Iterator;

import com.mobisols.tollpayments.dao.VmlTypeDao;
import com.mobisols.tollpayments.response.get.VehicleType;
import com.mobisols.tollpayments.response.get.VmlType;
import com.mobisols.tollpayments.response.get.VmlTypeListResponse;
import com.mobisols.tollpayments.service.VmlTypeListService;

public class VmlTypeListServiceImpl implements VmlTypeListService {
     private VmlTypeDao vmlTypeDao;
     
     public VmlTypeListServiceImpl()
     {
    	 
     }
	@Override
	public VmlTypeListResponse getVmlTypeList() {
		List<com.mobisols.tollpayments.model.VmlType> vl =vmlTypeDao.getVmlTypeList();
		VmlTypeListResponse vmlTypeListResponse = new VmlTypeListResponse();
		for(Iterator i=vl.iterator();i.hasNext();)
		{
			com.mobisols.tollpayments.model.VmlType vt=(com.mobisols.tollpayments.model.VmlType) i.next();
			VmlType v=new VmlType();
			v.setName(vt.getName());
			v.setDescription(vt.getDescription());
			vmlTypeListResponse.getVmlTypeList().add(v);
		}
		return vmlTypeListResponse;
	}
	public VmlTypeDao getVmlTypeDao() {
		return vmlTypeDao;
	}
	public void setVmlTypeDao(VmlTypeDao vmlTypeDao) {
		this.vmlTypeDao = vmlTypeDao;
	}
	

}
