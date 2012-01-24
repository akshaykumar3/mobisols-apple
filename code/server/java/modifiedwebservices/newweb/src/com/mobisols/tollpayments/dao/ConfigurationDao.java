package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.Configuration;

// TODO: Auto-generated Javadoc
/**
 * The Interface ConfigurationDao.
 */
public interface ConfigurationDao {
	
	/**
	 * Gets the key values.
	 *
	 * @param component the component
	 * @param version the version
	 * @return the key values
	 */
	public List<Configuration> getKeyValues(String component,String version);
}
