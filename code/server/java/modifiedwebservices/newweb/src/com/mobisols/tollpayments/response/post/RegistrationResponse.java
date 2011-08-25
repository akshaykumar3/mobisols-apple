package com.mobisols.tollpayments.response.post;

import java.util.HashMap;

public class RegistrationResponse {

	private HashMap<String, String> response;

	public RegistrationResponse()
	{
		response=new HashMap<String, String>();
	}
	public HashMap<String, String> getResponse() {
		return response;
	}

	public void setResponse(HashMap<String, String> response) {
		this.response = response;
	}
}
