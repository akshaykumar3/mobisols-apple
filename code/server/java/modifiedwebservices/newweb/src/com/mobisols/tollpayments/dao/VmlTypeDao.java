package com.mobisols.tollpayments.dao;

import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Interface VmlTypeDao.
 */
public interface VmlTypeDao {
	
	/**
	 * Gets the vml type list.
	 *
	 * @return the vml type list
	 */
	public List getVmlTypeList(); 
	
	/**
	 * Gets the vml type id.
	 *
	 * @param name the name
	 * @return the vml type id
	 */
	public int getVmlTypeId(String name);
}
