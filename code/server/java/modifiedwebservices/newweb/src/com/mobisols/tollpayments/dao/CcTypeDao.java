package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

// TODO: Auto-generated Javadoc
/**
 * The Interface CcTypeDao.
 */
public interface CcTypeDao {

	/** The Constant DEFAULT_CC_TYPE_ID. */
	public static final Integer DEFAULT_CC_TYPE_ID = Integer.parseInt(ServerConfiguration.getServerConfiguration().getValue("default_cc_type_id"));
	
	/**
	 * Gets the cc type list.
	 *
	 * @return the cc type list
	 */
	public List getCcTypeList();

	/**
	 * Gets the cc type id.
	 *
	 * @param cardType the card type
	 * @return the cc type id
	 */
	public Integer getCcTypeId(String cardType);
}
