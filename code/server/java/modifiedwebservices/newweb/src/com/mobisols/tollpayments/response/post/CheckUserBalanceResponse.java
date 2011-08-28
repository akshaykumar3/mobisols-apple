package com.mobisols.tollpayments.response.post;

import java.util.LinkedList;
import java.util.List;

public class CheckUserBalanceResponse {
	private List<String> response;

	public CheckUserBalanceResponse(){
		response=new LinkedList<String>();
	}
	public List<String> getResponse() {
		return response;
	}

	public void setResponse(List<String> response) {
		this.response = response;
	}
	
}
