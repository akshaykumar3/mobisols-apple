package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.CcType;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

/**
 * The Interface CcTypeDao.
 * Used for accessing the credit card type table.
 */
public interface CcTypeDao {

	/** The Constant DEFAULT_CC_TYPE_ID. */
	public static final Integer DEFAULT_CC_TYPE_ID = Integer.parseInt(ServerConfiguration.getServerConfiguration().getValue("default_cc_type_id"));
	
	/**
	 * Gets the cc type list.
	 *
	 * @return all the credit card types in the database
	 */
	public List getCcTypeList();

	/**
	 * Gets the cc type id.
	 *
	 * @param cardType the card type
	 * @return the primary key of the card type.
	 */
	public Integer getCcTypeId(String cardType);

	/**
	 * @param ccTypeId
	 * @return
	 */
	public CcType getCcTypeName(Integer ccTypeId);
}
