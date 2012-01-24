package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.Make;

// TODO: Auto-generated Javadoc
/**
 * The Interface MakeDao.
 */
public interface MakeDao {
	
	/**
	 * Gets the make.
	 *
	 * @param name the name
	 * @return the make
	 */
	public Make getMake(String name);
	
	/**
	 * Gets the make.
	 *
	 * @return the make
	 */
	public List<Make> getMake();
}
