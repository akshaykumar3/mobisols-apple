package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.Make;

// TODO: Auto-generated Javadoc
/**
 * The Interface MakeDao.
 * Used to access the data of the Make table.
 */
public interface MakeDao {
	
	/**
	 * Gets the Make object from the make table with the given name.
	 *
	 * @param name the name
	 * @return the make
	 */
	public Make getMake(String name);
	
	/**
	 * Gets the list of the makes available in the database.
	 *
	 * @return list of the Make.
	 */
	public List<Make> getMake();
}
