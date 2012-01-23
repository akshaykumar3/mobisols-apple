package com.mobisols.tollpayments.dao;

import com.mobisols.tollpayments.response.get.ClientConfigurationResponse;

public interface ClientConfigurationDao {

	ClientConfigurationResponse getValue(String name, String version, String key);

}
