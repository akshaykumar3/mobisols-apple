package com.mobisols.tollpayments.dao;

import java.util.List;

// TODO: Auto-generated Javadoc
/**
 * The Interface VmlTypeDao.
 * Used to access data of vml_type table of database
 */
public interface VmlTypeDao {
	
	/**
	 * Gets the list vehicle movement log types.
	 *
	 * @return the vml type list
	 */
	public List getVmlTypeList(); 
	
	/**
	 * Gets the id of a given vehicle_movemnt log name.
	 *
	 * @param name the name of vehicle movement log.
	 * @return the vml type id
	 */
	public int getVmlTypeId(String name);
}
