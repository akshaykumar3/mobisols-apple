package com.mobisols.tollpayments.webservice;

import java.util.List;

import javax.ws.rs.QueryParam;


public interface TollDetailsList {
	List<TollDetailsImpl> tollDetailsList=null;
	
	public String generateTollDetailsList(@QueryParam("username") String user,@QueryParam("json") String json);
	public void setTollDetailsList(List<TollDetailsImpl> tollDetailsList);
	public List<TollDetailsImpl> getTollDetailsList();

}
