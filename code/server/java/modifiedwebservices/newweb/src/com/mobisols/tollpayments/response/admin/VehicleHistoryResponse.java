/**
 * 
 */
package com.mobisols.tollpayments.response.admin;

import java.util.LinkedList;
import java.util.List;

/**
 * @author Raghu
 *
 */
public class VehicleHistoryResponse {

	private List<VehicleHistoryDetails> vehicleHistory;

	public VehicleHistoryResponse(){
		this.vehicleHistory = new LinkedList<VehicleHistoryDetails>();
	}
	public List<VehicleHistoryDetails> getVehicleHistory() {
		return vehicleHistory;
	}

	public void setVehicleHistory(List<VehicleHistoryDetails> vehicleHistory) {
		this.vehicleHistory = vehicleHistory;
	}
	
}
