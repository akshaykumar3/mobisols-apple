package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.ComponentVersion;

// TODO: Auto-generated Javadoc
/**
 * The Interface ComponentVersionDao.
 */
public interface ComponentVersionDao {
	
	/**
	 * Gets the version.
	 *
	 * @param componentId the component id
	 * @param version the version
	 * @return the version
	 */
	public ComponentVersion getVersion(int componentId,String version);
	
	/**
	 * Gets the version.
	 *
	 * @param component the component
	 * @param version the version
	 * @return the version
	 */
	public ComponentVersion getVersion(String component,String version);
}
