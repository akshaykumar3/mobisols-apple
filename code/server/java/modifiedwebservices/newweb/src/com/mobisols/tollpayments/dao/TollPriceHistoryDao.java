package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.TollPriceHistory;

// TODO: Auto-generated Javadoc
/**
 * The Interface TollPriceHistoryDao.
 */
public interface TollPriceHistoryDao {

	/**
	 * Gets the toll price history.
	 *
	 * @param tollLocationId the toll location id
	 * @param price the price
	 * @return the toll price history
	 */
	public List<TollPriceHistory> getTollPriceHistory(int tollLocationId,float price);
}
