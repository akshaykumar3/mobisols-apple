package com.mobisols.tollpayments.webservice;

import java.util.List;

import javax.ws.rs.QueryParam;


public interface TollDetailsList {
	List<TollDetails> tollDetailsList=null;
	
	public String generateTollDetailsList(@QueryParam("username") String user,@QueryParam("json") String json);
	public void setTollDetailsList(List<TollDetails> tollDetailsList);
	public List<TollDetails> getTollDetailsList();

}
