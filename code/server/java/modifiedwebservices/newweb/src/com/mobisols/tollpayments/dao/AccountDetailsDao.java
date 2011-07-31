package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.User;

public interface AccountDetailsDao {

	public User getAccountDetails(String userId);
}
