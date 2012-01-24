package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.Model;

// TODO: Auto-generated Javadoc
/**
 * The Interface ModelDao.
 */
public interface ModelDao {
	
	/**
	 * Gets the model.
	 *
	 * @param makeId the make id
	 * @param name the name
	 * @return the model
	 */
	public Model getModel(int makeId,String name);
	
	/**
	 * Gets the model.
	 *
	 * @param make the make
	 * @param model the model
	 * @return the model
	 */
	public Model getModel(String make,String model);
}
