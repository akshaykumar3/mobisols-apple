package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class TollLocationListResponse {

	private List<TollDetails> tollDetailsList;
	
	public TollLocationListResponse()
	{
		tollDetailsList = new LinkedList<TollDetails>();
	}
	
	public List<TollDetails> getTollDetailsList() {
		return tollDetailsList;
	}

	public void setTollDetailsList(List<TollDetails> tollDetailsList) {
		this.tollDetailsList = tollDetailsList;
	}
}
