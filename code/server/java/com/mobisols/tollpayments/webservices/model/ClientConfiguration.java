/******************************************************************************
 * ClientConfiguration
 * 
 * This class represents complete response sent to the client for client
 * configuration.
 * ****************************************************************************
 * Change list
 * ============================================================================
 * Author					Date					Summary
 * ----------------------------------------------------------------------------
 * Harish Balijepalli		31-MAY-2011				Initial version
 * 
 *
 */

package com.mobisols.tollpayments.webservices.model;

import java.util.Date;

public class ClientConfiguration {
	private String apiVersion;
	private String request;
	private ClientConfigurationResponse response;
	private int code;
	private Date timestamp;
	

}
