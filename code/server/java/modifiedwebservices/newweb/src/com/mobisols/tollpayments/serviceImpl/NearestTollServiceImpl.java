package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.TollLocationUtil;
import com.mobisols.tollpayments.myutilsImpl.Location;
import com.mobisols.tollpayments.response.get.NearestTollResponse;
import com.mobisols.tollpayments.service.NearestTollService;

public class NearestTollServiceImpl implements NearestTollService {

	private TollLocationUtil tollLocationUtil;
	private TollLocationDao tollLocationDao;
	private JsonConverter jsonConverter;
	
	public String getNearestToll(String request,double lat,double longt) {
		NearestTollResponse response=new NearestTollResponse();
		String status="success";
		Location x=new Location();
		x.setLatitude(lat);
		x.setLongitude(longt);
		Location l=tollLocationUtil.getNearestToll(x);
		TollLocation t= tollLocationDao.getTollLocation(l.getLatitude(), l.getLongitude());
		response.setAveragePrice(2.3);
		response.setCity(t.getCity());
		response.setState(t.getState());
		response.setTollOperator(t.getTollOperator().getName());
		response.setTollPrice(2.3);
		return jsonConverter.getJSON(request, status,response);
	}
	
	public TollLocationUtil getTollLocationUtil() {
		return tollLocationUtil;
	}
	public void setTollLocationUtil(TollLocationUtil tolllocationUtil) {
		this.tollLocationUtil = tolllocationUtil;
	}
	public TollLocationDao getTollLocationDao() {
		return tollLocationDao;
	}
	public void setTollLocationDao(TollLocationDao tollLocationDao) {
		this.tollLocationDao = tollLocationDao;
	}

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}

}
