package com.mobisols.tollpayments.request.post;

import java.util.LinkedList;
import java.util.List;

public class CheckUserBalanceRequest {

	private List<Integer> users;

	public CheckUserBalanceRequest()
	{
		this.users=new LinkedList<Integer>();
	}
	public List<Integer> getUsers() {
		return users;
	}

	public void setUsers(List<Integer> users) {
		this.users = users;
	} 
}
