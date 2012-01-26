package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.VehicleTypeDao;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.model.TollPrice;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.TollDetails;
import com.mobisols.tollpayments.response.get.TollLocationListResponse;
import com.mobisols.tollpayments.service.TollDetailsListService;

// TODO: Auto-generated Javadoc
/**
 * The Class TollDetailsListServiceImpl.
 */
public class TollDetailsListServiceImpl implements TollDetailsListService {

	/** The toll location dao. */
	private TollLocationDao tollLocationDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
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

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.TollDetailsListService#getTollLocations(java.lang.String)
	 */
	@Override
	public String getTollLocations(String request) {
		String status="success";
		List<TollLocation> tollList = tollLocationDao.getTollLocations();
		TollLocationListResponse response=new TollLocationListResponse();
		for(Iterator<TollLocation> it= tollList.iterator();it.hasNext();)
		{
			TollLocation tl=it.next();
			TollDetails td=new TollDetails();
			td.setTollOperator(tl.getTollOperator().getName());
			td.setCity(tl.getCity());
			td.setState(tl.getState());
			td.setLatitude(tl.getLatitude());
			td.setLongitude(tl.getLongitude());
			td.setZip(tl.getZip());
			td.setIsCovered(tl.getIsCovered());
			Set<TollPrice> tollPrice = tl.getTollPrice();
			TollPrice tp=null;
			for(Iterator<TollPrice> it1 = tollPrice.iterator();it1.hasNext(); )
			{
				tp= it1.next();
				if(tp.getVehicleTypeId().equals(VehicleTypeDao.DEFAULT_TYPE));
				{
					td.setCostPrice(tp.getCostPrice());
					td.setSellingPrice(tp.getSellingPrice());
					break;
				}
			}
			response.getTollDetailsList().add(td);
		}
		return jsonConverter.getJSON(request, status,response);
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.TollDetailsListService#getTollLocations(java.lang.String, double, double, double, double)
	 */
	@Override
	public String getTollLocations(String request,double lat1, double long1,
			double lat2, double long2) {
		List<TollLocation> tollList = tollLocationDao.getTollLocations();
		String status="success";
		TollLocationListResponse response=new TollLocationListResponse();
		for(Iterator<TollLocation> it= tollList.iterator();it.hasNext();)
		{
			TollLocation tl=it.next();
			if(tl.getLatitude()>=lat2 && tl.getLatitude() <=lat1 && tl.getLongitude()>=long2 && tl.getLongitude() <=long1)
			{
				TollDetails td=new TollDetails();
				td.setTollOperator(tl.getTollOperator().getName());
				td.setCity(tl.getCity());
				td.setState(tl.getState());
				td.setLatitude(tl.getLatitude());
				td.setLongitude(tl.getLongitude());
				td.setZip(tl.getZip());
				td.setIsCovered(tl.getIsCovered());
				Set<TollPrice> tollPrice = tl.getTollPrice();
				TollPrice tp=null;
				for(Iterator<TollPrice> it1 = tollPrice.iterator();it1.hasNext(); )
				{
					tp= it1.next();
					if(tp.getVehicleTypeId().equals(VehicleTypeDao.DEFAULT_TYPE));
					{
						td.setCostPrice(tp.getCostPrice());
						td.setSellingPrice(tp.getSellingPrice());
						break;
					}
				}
				response.getTollDetailsList().add(td);
			}
		}
		return jsonConverter.getJSON(request, status,response);
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
