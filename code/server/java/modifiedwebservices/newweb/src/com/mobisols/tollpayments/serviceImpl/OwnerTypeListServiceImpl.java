package com.mobisols.tollpayments.serviceImpl;

import java.util.List;

import java.util.Iterator;

import com.mobisols.tollpayments.dao.OwnerTypeDao;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.OwnerType;
import com.mobisols.tollpayments.response.get.OwnerTypeListResponse;
import com.mobisols.tollpayments.service.OwnerTypeListService;

// TODO: Auto-generated Javadoc
/**
 * The Class OwnerTypeListServiceImpl.
 */
public class OwnerTypeListServiceImpl implements OwnerTypeListService {

	 /** The owner type dao. */
 	private OwnerTypeDao ownerTypeDao;
	 
 	/** The json converter. */
 	private JsonConverter jsonConverter;
		
	 /**
 	 * Instantiates a new owner type list service impl.
 	 */
 	public OwnerTypeListServiceImpl()
	 {
		 
	 }
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.OwnerTypeListService#getOwnerTypeList(java.lang.String)
	 */
	@Override
	public String getOwnerTypeList(String request) {
		String status="success";
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
	
	/**
	 * Gets the owner type dao.
	 *
	 * @return the owner type dao
	 */
	public OwnerTypeDao getOwnerTypeDao() {
		return ownerTypeDao;
	}
	
	/**
	 * Sets the owner type dao.
	 *
	 * @param ownerTypeDao the new owner type dao
	 */
	public void setOwnerTypeDao(OwnerTypeDao ownerTypeDao) {
		this.ownerTypeDao = ownerTypeDao;
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
