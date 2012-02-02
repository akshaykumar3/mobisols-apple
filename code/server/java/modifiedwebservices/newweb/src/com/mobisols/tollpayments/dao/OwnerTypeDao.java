package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.OwnerType;

/**
 * The Interface OwnerTypeDao.
 * Used to access the data from the owner_type of the database.
 */
public interface OwnerTypeDao {
	
	/**
	 * Gets the owner type list from the database.
	 *
	 * @return the owner type list
	 */
	public List getOwnerTypeList();

	/**
	 * Gets the owner type of particular name.
	 *
	 * @param ownerType the owner type
	 * @return the owner type
	 */
	public OwnerType getOwnerType(String ownerType);

}
