package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;

public interface CcTypeDao {

	public static final Integer DEFAULT_CC_TYPE_ID = Integer.parseInt(ServerConfiguration.getServerConfiguration().getValue("default_cc_type_id"));
	public List getCcTypeList();

	public Integer getCcTypeId(String cardType);
}
