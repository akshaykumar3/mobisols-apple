package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.Model;

// TODO: Auto-generated Javadoc
/**
 * The Interface ModelDao.
 */
public interface ModelDao {
	
	/**
	 * Gets the Model object which belongs to whose name is given and belongs to the make with the given Id.
	 *
	 * @param makeId the make id
	 * @param name the name
	 * @return the model
	 */
	public Model getModel(int makeId,String name);
	
	/**
	 * Gets the Model object from the model table which blongs to a particular model and whose name is given.
	 *
	 * @param make the make
	 * @param model the model
	 * @return the model
	 */
	public Model getModel(String make,String model);
}
