package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.Set;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.model.TollPrice;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.TollLocationUtil;
import com.mobisols.tollpayments.myutilsImpl.Location;
import com.mobisols.tollpayments.response.get.NearestTollResponse;
import com.mobisols.tollpayments.service.NearestTollService;

// TODO: Auto-generated Javadoc
/**
 * The Class NearestTollServiceImpl.
 */
public class NearestTollServiceImpl implements NearestTollService {

	/** The toll location util. */
	private TollLocationUtil tollLocationUtil;
	
	/** The toll location dao. */
	private TollLocationDao tollLocationDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.NearestTollService#getNearestToll(java.lang.String, double, double)
	 */
	public String getNearestToll(String request,double lat,double longt) {
		NearestTollResponse response=new NearestTollResponse();
		String status="success";
		Location x=new Location();
		x.setLatitude(lat);
		x.setLongitude(longt);
		Location l=tollLocationUtil.getNearestToll(x);
		TollLocation t= tollLocationDao.getTollLocation(l.getLatitude(), l.getLongitude());
		response.setLatitude(t.getLatitude());
		response.setLongitude(t.getLongitude());
		response.setCity(t.getCity());
		response.setState(t.getState());
		response.setTollOperator(t.getTollOperator().getName());
		Set<TollPrice> tollPrice = t.getTollPrice();
		TollPrice tp=null;
		for(Iterator<TollPrice> it = tollPrice.iterator();it.hasNext(); )
		{
			tp= it.next();
			if(tp.getVehicleTypeId().equals(VehicleTypeDao.DEFAULT_TYPE));
			{
				response.setCostPrice(tp.getCostPrice());
				response.setSellingPrice(tp.getSellingPrice());
				break;
			}
		}
		return jsonConverter.getJSON(request, status,response);
	}
	
	/**
	 * Gets the toll location util.
	 *
	 * @return the toll location util
	 */
	public TollLocationUtil getTollLocationUtil() {
		return tollLocationUtil;
	}
	
	/**
	 * Sets the toll location util.
	 *
	 * @param tolllocationUtil the new toll location util
	 */
	public void setTollLocationUtil(TollLocationUtil tolllocationUtil) {
		this.tollLocationUtil = tolllocationUtil;
	}
	
	/**
	 * Gets the toll location dao.
	 *
	 * @return the toll location dao
	 */
	public TollLocationDao getTollLocationDao() {
		return tollLocationDao;
	}
	
	/**
	 * Sets the toll location dao.
	 *
	 * @param tollLocationDao the new toll location dao
	 */
	public void setTollLocationDao(TollLocationDao tollLocationDao) {
		this.tollLocationDao = tollLocationDao;
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
