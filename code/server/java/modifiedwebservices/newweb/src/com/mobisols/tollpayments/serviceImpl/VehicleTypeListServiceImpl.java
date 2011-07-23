package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;


import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.request.get.VehicleType;
import com.mobisols.tollpayments.request.get.VehicleTypeListResponse;
import com.mobisols.tollpayments.service.VehicleTypeListService;

public class VehicleTypeListServiceImpl implements VehicleTypeListService {
	private VehicleTypeListResponse vehicleTypeListResponse;
	private VehicleTypeDao vehicleTypeDao;
	
	
	public VehicleTypeListServiceImpl()
	{
		
	}
	
	public VehicleTypeListResponse getVehicleTypeList()
	{
		List<com.mobisols.tollpayments.model.VehicleType> vl=vehicleTypeDao.getVehicleTypeList();
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
	public VehicleTypeListResponse getVehicleTypeListResponse() {
		return vehicleTypeListResponse;
	}
	public void setVehicleTypeListResponse(
			VehicleTypeListResponse vehicleTypeListResponse) {
		this.vehicleTypeListResponse = vehicleTypeListResponse;
	}
	public VehicleTypeDao getVehicleTypeDao() {
		return vehicleTypeDao;
	}
	public void setVehicleTypeDao(VehicleTypeDao vehicleTypeDao) {
		this.vehicleTypeDao = vehicleTypeDao;
	}
}
