package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;


import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.response.get.VehicleType;
import com.mobisols.tollpayments.response.get.VehicleTypeListResponse;
import com.mobisols.tollpayments.service.VehicleTypeListService;

public class VehicleTypeListServiceImpl implements VehicleTypeListService {
	private VehicleTypeDao vehicleTypeDao;
	
	
	public VehicleTypeListServiceImpl()
	{
		
	}
	
	public VehicleTypeListResponse getVehicleTypeList()
	{
		List<com.mobisols.tollpayments.model.VehicleType> vl=vehicleTypeDao.getVehicleTypeList();
		VehicleTypeListResponse vehicleTypeListResponse= new VehicleTypeListResponse();
		for(Iterator i=vl.iterator();i.hasNext();)
		{
			com.mobisols.tollpayments.model.VehicleType vt=(com.mobisols.tollpayments.model.VehicleType) i.next();
			VehicleType v=new VehicleType();
			v.setName(vt.getName());
			v.setDescription(vt.getDescription());
			vehicleTypeListResponse.getVehicleTypeList().add(v);
		}
		return vehicleTypeListResponse;
	}
	public VehicleTypeDao getVehicleTypeDao() {
		return vehicleTypeDao;
	}
	public void setVehicleTypeDao(VehicleTypeDao vehicleTypeDao) {
		this.vehicleTypeDao = vehicleTypeDao;
	}
}
