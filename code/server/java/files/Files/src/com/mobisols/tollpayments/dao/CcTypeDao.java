package com.mobisols.tollpayments.dao;

import java.util.List;

public interface CcTypeDao {

	public List getCcTypeList();

	public Integer getCcTypeId(String cardType);
}
