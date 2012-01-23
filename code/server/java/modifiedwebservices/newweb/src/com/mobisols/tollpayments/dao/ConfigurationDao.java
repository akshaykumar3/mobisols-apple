package com.mobisols.tollpayments.dao;

import java.util.List;

import com.mobisols.tollpayments.model.Configuration;

public interface ConfigurationDao {
	public List<Configuration> getKeyValues(String component,String version);
}
