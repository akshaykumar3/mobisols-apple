/**
 * 
 */
package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.request.admin.VehicleHistoryDetailsRequest;

/**
 * @author Raghu
 *
 */
public interface VehicleHistoryDetails {

	public String getVehicleHistory(String request, VehicleHistoryDetailsRequest vhdr);
}
