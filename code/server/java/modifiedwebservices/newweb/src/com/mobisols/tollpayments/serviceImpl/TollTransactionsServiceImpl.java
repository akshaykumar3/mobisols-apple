/**
 * 
 */
package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.TollLocationDao;
import com.mobisols.tollpayments.dao.VehicleTollUsageDao;
import com.mobisols.tollpayments.model.TollLocation;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.admin.TollTransactionRequest;
import com.mobisols.tollpayments.response.admin.TollTransactionResponse;
import com.mobisols.tollpayments.service.TollTransactionsService;

/**
 * @author Raghu
 *
 */
public class TollTransactionsServiceImpl implements TollTransactionsService{

	private JsonConverter jsonConverter;
	private VehicleTollUsageDao vehicleTollUsageDao;
	private TollLocationDao tollLocationDao;
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.TollTransactionsService#getTollTransactions(java.lang.String)
	 */
	@Override
	public String getTollTransactions(String request,TollTransactionRequest ttr) {
		TollTransactionResponse response = new TollTransactionResponse();
		String status = "success" ;
		TollLocation tl = tollLocationDao.getTollLocation(ttr.getTollLocationName());
		
		return jsonConverter.getJSON(request, status, response);
	}

}
