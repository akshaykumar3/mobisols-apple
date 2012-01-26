package com.mobisols.tollpayments.serviceImpl;

import java.util.List;

import java.util.Iterator;

import com.mobisols.tollpayments.dao.VmlTypeDao;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.VehicleType;
import com.mobisols.tollpayments.response.get.VmlType;
import com.mobisols.tollpayments.response.get.VmlTypeListResponse;
import com.mobisols.tollpayments.service.VmlTypeListService;

// TODO: Auto-generated Javadoc
/**
 * The Class VmlTypeListServiceImpl.
 */
public class VmlTypeListServiceImpl implements VmlTypeListService {
     
     /** The vml type dao. */
     private VmlTypeDao vmlTypeDao;
     
     /** The json converter. */
     private JsonConverter jsonConverter;
 	
     /**
      * Instantiates a new vml type list service impl.
      */
     public VmlTypeListServiceImpl()
     {
    	 
     }
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.VmlTypeListService#getVmlTypeList(java.lang.String)
	 */
	@Override
	public String getVmlTypeList(String request) {
		String status="success";
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
		return jsonConverter.getJSON(request, status,vmlTypeListResponse);
	}
	
	/**
	 * Gets the vml type dao.
	 *
	 * @return the vml type dao
	 */
	public VmlTypeDao getVmlTypeDao() {
		return vmlTypeDao;
	}
	
	/**
	 * Sets the vml type dao.
	 *
	 * @param vmlTypeDao the new vml type dao
	 */
	public void setVmlTypeDao(VmlTypeDao vmlTypeDao) {
		this.vmlTypeDao = vmlTypeDao;
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
