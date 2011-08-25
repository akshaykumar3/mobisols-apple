package com.mobisols.tollpayments.response.post;

import java.util.HashMap;

import org.jruby.compiler.ir.operands.Hash;

public class LoginResponse {

	private HashMap<String, String> response;

	public LoginResponse()
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
