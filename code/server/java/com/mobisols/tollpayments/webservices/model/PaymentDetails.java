
/******************************************************************************
 * PaymentDetails
 * 
 * This class represents vehicle data bean of user_payment_details table
 * 
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

public class PaymentDetails {
	
	private String firstName;
	private String lastName;
	private int creditCardNumber;
	private int cvv;
	private int expiryMonth;
	private int expiryYear;
	private String address1;
	private String address2;
	private String state;
	private String country;
	private int zip;

}
