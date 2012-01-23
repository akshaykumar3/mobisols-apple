package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.UserBalanceLog;

public interface UserBalanceLogDao {
	public UserBalanceLog getRecentBalanceLogId(int balanceId);
}
