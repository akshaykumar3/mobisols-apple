package com.mobisols.tollpayments.request.post;

import java.util.LinkedList;
import java.util.List;

/**
 * The Class CheckUserBalanceRequest.
 */
public class CheckUserBalanceRequest {

	/** The users. */
	private List<Integer> users;

	/**
	 * Instantiates a new check user balance request.
	 */
	public CheckUserBalanceRequest()
	{
		this.users=new LinkedList<Integer>();
	}
	
	/**
	 * Gets the users.
	 *
	 * @return the users
	 */
	public List<Integer> getUsers() {
		return users;
	}

	/**
	 * Sets the users.
	 *
	 * @param users the new users
	 */
	public void setUsers(List<Integer> users) {
		this.users = users;
	} 
}
