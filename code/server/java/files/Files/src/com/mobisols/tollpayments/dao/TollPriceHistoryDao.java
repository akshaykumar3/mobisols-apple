package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.TollPriceHistory;

public interface TollPriceHistoryDao {

	public List<TollPriceHistory> getTollPriceHistory(int tollLocationId,float price);
}
