package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.TollPriceHistory;

// TODO: Auto-generated Javadoc
/**
 * The Interface TollPriceHistoryDao.
 * Used to access the data of the toll_price_history table of the database.
 */
public interface TollPriceHistoryDao {

	/**
	 * Gets the list of toll price history of the given toll location
	 *
	 * @param tollLocationId the toll location id
	 * @param price the price
	 * @return the list of toll price history
	 */
	public List<TollPriceHistory> getTollPriceHistory(int tollLocationId,float price);
}
