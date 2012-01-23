package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.OwnerType;

public interface OwnerTypeDao {
	
	public List getOwnerTypeList();

	public OwnerType getOwnerType(String ownerType);

}
