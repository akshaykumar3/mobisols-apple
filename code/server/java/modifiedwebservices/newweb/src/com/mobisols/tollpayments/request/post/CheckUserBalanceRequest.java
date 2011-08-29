package com.mobisols.tollpayments.request.post;

import java.util.LinkedList;
import java.util.List;

public class CheckUserBalanceRequest {

	private List<String> users;

	public CheckUserBalanceRequest()
	{
		this.users=new LinkedList<String>();
	}
	public List<String> getUsers() {
		return users;
	}

	public void setUses(List<String> users) {
		this.users = users;
	} 
}