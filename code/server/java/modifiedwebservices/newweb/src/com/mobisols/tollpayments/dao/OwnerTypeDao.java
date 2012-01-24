package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.OwnerType;

// TODO: Auto-generated Javadoc
/**
 * The Interface OwnerTypeDao.
 */
public interface OwnerTypeDao {
	
	/**
	 * Gets the owner type list.
	 *
	 * @return the owner type list
	 */
	public List getOwnerTypeList();

	/**
	 * Gets the owner type.
	 *
	 * @param ownerType the owner type
	 * @return the owner type
	 */
	public OwnerType getOwnerType(String ownerType);

}
