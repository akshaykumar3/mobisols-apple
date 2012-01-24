package com.mobisols.tollpayments.serviceImpl;

import java.util.List;

import java.util.Iterator;

import com.mobisols.tollpayments.dao.CcTypeDao;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.CcType;
import com.mobisols.tollpayments.response.get.CcTypeListResponse;
import com.mobisols.tollpayments.service.CcTypeListService;

// TODO: Auto-generated Javadoc
/**
 * The Class CcTypeListServiceImpl.
 */
public class CcTypeListServiceImpl implements CcTypeListService{
	
	/** The cc type dao. */
	private CcTypeDao ccTypeDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
    /**
     * Instantiates a new cc type list service impl.
     */
    public CcTypeListServiceImpl()
    {
    	
    }
    
    
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.CcTypeListService#getCcTypeList(java.lang.String)
	 */
	@Override
	public String getCcTypeList(String request) {
		List<com.mobisols.tollpayments.model.CcType> cl=ccTypeDao.getCcTypeList();
		String status="success";
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


	/**
	 * Gets the cc type dao.
	 *
	 * @return the cc type dao
	 */
	public CcTypeDao getCcTypeDao() {
		return ccTypeDao;
	}


	/**
	 * Sets the cc type dao.
	 *
	 * @param ccTypeDao the new cc type dao
	 */
	public void setCcTypeDao(CcTypeDao ccTypeDao) {
		this.ccTypeDao = ccTypeDao;
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
