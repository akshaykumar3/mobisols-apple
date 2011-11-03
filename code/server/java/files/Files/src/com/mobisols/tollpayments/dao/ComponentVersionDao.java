package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.model.ComponentVersion;

public interface ComponentVersionDao {
	public ComponentVersion getVersion(int componentId,String version);
	public ComponentVersion getVersion(String component,String version);
}
