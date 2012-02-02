package com.mobisols.tollpayments.service;

import java.util.List;

import com.mobisols.tollpayments.response.post.CheckUserBalanceResponse;

/**
 * The Interface CheckUserBalance.
 * Used to check the balance of each user and make necessary changes.
 */
public interface CheckUserBalance {
	/**
	 * Checks the balance of the given users and transfers the required amount if the balance is less the min balance of the user.
	 * If the UserList is null then it checks the balance of all the users.
	 *
	 * @param users the list of usernames.
	 * @return the json format of  com.mobisols.tollpayments.response.get.CheckUserBalanceResponse 
	 */
	public CheckUserBalanceResponse check(List<String> users);
}
