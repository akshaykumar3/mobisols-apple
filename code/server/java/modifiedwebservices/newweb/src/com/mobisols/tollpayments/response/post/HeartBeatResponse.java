package com.mobisols.tollpayments.response.post;

import java.util.HashMap;

public class HeartBeatResponse {
	private HashMap<String, String> hash;

	public HeartBeatResponse()
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
