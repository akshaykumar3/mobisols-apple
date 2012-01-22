package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.TollOperator;
import com.mobisols.tollpayments.model.User;

public interface TollOperatorDao {
	public User getUser(int tollOperatorId);
	public TollOperator getTollOperator(int tollOperatorId);
}
