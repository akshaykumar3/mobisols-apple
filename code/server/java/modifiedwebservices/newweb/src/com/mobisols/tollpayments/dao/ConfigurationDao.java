package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.Configuration;

// TODO: Auto-generated Javadoc
/**
 * The Interface ConfigurationDao.
 * Used to access the data of the Configuration Table.
 */
public interface ConfigurationDao {
	
	/**
	 * Gets the key values.
	 *
	 * @param component the component
	 * @param version the version
	 * @return the key values of a component with a particular version
	 */
	public List<Configuration> getKeyValues(String component,String version);
}
