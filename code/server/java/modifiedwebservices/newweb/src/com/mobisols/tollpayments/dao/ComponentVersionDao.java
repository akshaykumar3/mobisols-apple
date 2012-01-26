package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.ComponentVersion;

// TODO: Auto-generated Javadoc
/**
 * The Interface ComponentVersionDao.
 * Used for access the data of component_version table.
 */
public interface ComponentVersionDao {
	
	/**
	 * Gets the version.
	 *
	 * @param componentId the component id
	 * @param version the version
	 * @return the object of ComponentVersion that belongs to component whose Id is compoentId and with given version. 
	 */
	public ComponentVersion getVersion(int componentId,String version);
	
	/**
	 * Gets the version.
	 *
	 * @param component the component
	 * @param version the version
	 * @return the CompoentVerion object of the component with a name and given version.
	 */
	public ComponentVersion getVersion(String component,String version);
}
