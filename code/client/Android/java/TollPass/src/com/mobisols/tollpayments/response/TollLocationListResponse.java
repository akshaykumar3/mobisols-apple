package com.mobisols.tollpayments.response;

import java.util.List;

import com.mobisols.tollpayments.data.TollLocation;

public class TollLocationListResponse {
	private List<TollLocation> tollDetailsList;
	
	public TollLocationListResponse(){
		
	}
	
	public List<TollLocation> getTollDetailsList() {
		return tollDetailsList;
	}

	public void setTollDetailsList(List<TollLocation> tollDetailsList) {
		this.tollDetailsList = tollDetailsList;
	}
}
