package com.mobisols.tollpayments.webservice;

import java.util.HashMap;

public class HeartBeatResponseImpl implements HeartBeatResponse {
	private HashMap<String, String> hash;

	public HeartBeatResponseImpl()
	{
		this.hash= new HashMap<String, String>();
	}
	
	public HashMap<String, String> getHash() {
		return hash;
	}

	public void setHash(HashMap<String, String> hash) {
		this.hash = hash;
	}
}
