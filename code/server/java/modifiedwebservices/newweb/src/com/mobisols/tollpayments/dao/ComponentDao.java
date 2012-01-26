package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.Component;

// TODO: Auto-generated Javadoc
/**
 * The Interface ComponentDao.
 * Used to access the component view of the database
 */
public interface ComponentDao {
	
	/**
	 * Gets the component.
	 *
	 * @param name the name of the component required.
	 * @return the component with the particular name
	 */
	public Component getComponent(String name);
}
