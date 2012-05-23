/**
 * 
 */
package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.TollPriceHistoryDao;
import com.mobisols.tollpayments.dao.TpImportBatchDao;
import com.mobisols.tollpayments.dao.TpImportDao;
import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.dao.VehicleTollUsageDao;

// TODO: Auto-generated Javadoc
/**
 * The Interface ProcessImports.
 *
 * @author Raghu
 */
public interface ProcessImports {

	/** The tp import batch dao. */
	TpImportBatchDao tpImportBatchDao = null;
	
	/** The tp import dao. */
	TpImportDao tpImportDao = null;
	
	/** The vehicle toll usage dao. */
	VehicleTollUsageDao vehicleTollUsageDao = null;
	
	/** The user vehicle history dao. */
	UserVehicleHistoryDao userVehicleHistoryDao = null;
	
	/** The toll location dao. */
	TollLocationDao tollLocationDao = null;
	
	/** The toll price history dao. */
	TollPriceHistoryDao tollPriceHistoryDao = null;
	
	/**
	 * Process imports.
	 *
	 * @param request the request
	 * @param batchId the batch id
	 * @return the string
	 */
	public String processImports(String request,int batchId);
}
