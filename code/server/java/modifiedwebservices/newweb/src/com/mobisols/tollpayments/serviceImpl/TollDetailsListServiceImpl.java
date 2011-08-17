package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.response.get.TollDetails;
import com.mobisols.tollpayments.response.get.TollLocationListResponse;
import com.mobisols.tollpayments.service.TollDetailsListService;

public class TollDetailsListServiceImpl implements TollDetailsListService {

	private TollLocationDao tollLocationDao;

	public TollLocationDao getTollLocationDao() {
		return tollLocationDao;
	}

	public void setTollLocationDao(TollLocationDao tollLocationDao) {
		this.tollLocationDao = tollLocationDao;
	}

	@Override
	public TollLocationListResponse getTollLocations() {
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
			response.getTollDetailsList().add(td);
		}
		return response;
	}

	@Override
	public TollLocationListResponse getTollLocations(double lat1, double long1,
			double lat2, double long2) {
		List<TollLocation> tollList = tollLocationDao.getTollLocations();
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
				response.getTollDetailsList().add(td);
			}
		}
		return response;
	}
}