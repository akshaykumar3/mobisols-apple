package com.mobisols.tollpayments.dao;

import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Interface ServicePlanDao.
 * Used to access the service plan table of the database.
 */
public interface ServicePlanDao {
	
	/**
	 * Gets the list of all services available.
	 *
	 * @return the service list
	 */
	public List getServiceList();
}
