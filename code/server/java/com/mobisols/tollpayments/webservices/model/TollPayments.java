
/******************************************************************************
 * TollPayments
 * 
 * This class represents vehicle data bean of vehicle_toll_usage table
 * 
 * ****************************************************************************
 * Change list
 * ============================================================================
 * Author					Date					Summary
 * ----------------------------------------------------------------------------
 * Harish Balijepalli		31-MAY-2011				Initial version
 * 
 */

package com.mobisols.tollpayments.webservices.model;

import java.math.BigDecimal;
import java.util.Date;

public class TollPayments {
	private String registration;
	private BigDecimal amount;
	private Date date;
	private double latitude;
	private double longitude;
	private String tollLocationName;

}
