package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;


import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.VehicleType;
import com.mobisols.tollpayments.response.get.VehicleTypeListResponse;
import com.mobisols.tollpayments.service.VehicleTypeListService;

// TODO: Auto-generated Javadoc
/**
 * The Class VehicleTypeListServiceImpl.
 */
public class VehicleTypeListServiceImpl implements VehicleTypeListService {
	
	/** The vehicle type dao. */
	private VehicleTypeDao vehicleTypeDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	
	/**
	 * Instantiates a new vehicle type list service impl.
	 */
	public VehicleTypeListServiceImpl()
	{
		
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.VehicleTypeListService#getVehicleTypeList(java.lang.String)
	 */
	public String getVehicleTypeList(String request)
	{
		String status="success";
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
		return jsonConverter.getJSON(request, status,vehicleTypeListResponse);
	}
	
	/**
	 * Gets the vehicle type dao.
	 *
	 * @return the vehicle type dao
	 */
	public VehicleTypeDao getVehicleTypeDao() {
		return vehicleTypeDao;
	}
	
	/**
	 * Sets the vehicle type dao.
	 *
	 * @param vehicleTypeDao the new vehicle type dao
	 */
	public void setVehicleTypeDao(VehicleTypeDao vehicleTypeDao) {
		this.vehicleTypeDao = vehicleTypeDao;
	}

	/**
	 * Gets the json converter.
	 *
	 * @return the json converter
	 */
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	/**
	 * Sets the json converter.
	 *
	 * @param jsonConverter the new json converter
	 */
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
