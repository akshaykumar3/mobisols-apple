package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.UserBalance;

public interface UserBalanceDao {
	public UserBalance getUserBalance(String username);
	public void save(UserBalance u);
}
