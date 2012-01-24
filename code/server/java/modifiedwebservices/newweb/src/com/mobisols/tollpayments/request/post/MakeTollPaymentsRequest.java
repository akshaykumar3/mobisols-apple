package com.mobisols.tollpayments.request.post;

import java.util.LinkedList;
import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Class MakeTollPaymentsRequest.
 */
public class MakeTollPaymentsRequest {
	
	/** The users. */
	private List<String> users;
	
	/**
	 * Instantiates a new make toll payments request.
	 */
	public MakeTollPaymentsRequest()
	{
		this.users=new LinkedList<String>();
	}
	
	/**
	 * Gets the users.
	 *
	 * @return the users
	 */
	public List<String> getUsers() {
		return users;
	}

	/**
	 * Sets the users.
	 *
	 * @param users the new users
	 */
	public void setUsers(List<String> users) {
		this.users = users;
	} 
}
