/******************************************************************************
 * AccountDetails
 * 
 * This class represents complete response sent to the client for 
 * Account service. This will contain data for the client to display all
 * required information to the user.
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

import java.util.List;

public class AccountDetails {
	//user details
	
	private PaymentDetails paymentDetails;
	
	private List<VehicleData> vehicleList;
	
	private List<TollPayments> tollPayments;
	

}
