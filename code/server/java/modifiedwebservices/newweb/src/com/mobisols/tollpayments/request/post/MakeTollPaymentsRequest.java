package com.mobisols.tollpayments.request.post;

import java.util.LinkedList;
import java.util.List;

public class MakeTollPaymentsRequest {
	private List<String> users;
	
	public MakeTollPaymentsRequest()
	{
		this.users=new LinkedList<String>();
	}
	public List<String> getUsers() {
		return users;
	}

	public void setUsers(List<String> users) {
		this.users = users;
	} 
}
