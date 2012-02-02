/**
 * 
 */
package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.PaymentTransactionDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.PaymentTransaction;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.admin.PaymentTransactionRequest;
import com.mobisols.tollpayments.response.admin.PaymentTransactionResponse;
import com.mobisols.tollpayments.response.admin.TollPaymentTransfer;
import com.mobisols.tollpayments.service.PaymentTransactionService;

/**
 * @author Raghu
 *
 */
public class PaymentTransactionServiceImpl implements PaymentTransactionService{

	private JsonConverter jsonConverter;
	private UserDao userDao;
	private PaymentTransactionDao paymentTransactionDao;
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.PaymentTransactionService#getPaymentTransactions(java.lang.String, com.mobisols.tollpayments.request.admin.PaymentTransactionRequest)
	 */
	@Override
	public String getPaymentTransactions(String request,
			PaymentTransactionRequest ptr) {
		PaymentTransactionResponse response = new PaymentTransactionResponse();
		String status ="success";
		if(ptr.getStartDate()==null){
			ptr.setStartDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
		}
		if(ptr.getEndDate()==null){
			Calendar c = Calendar.getInstance();
			c.setTimeInMillis(ptr.getStartDate().getTime());
			c.add(Calendar.MONTH, -1);
			ptr.setEndDate(new Timestamp(c.getTimeInMillis()));
		}
		User u = userDao.getUser(ptr.getUsername());
		List<PaymentTransaction> ptList = paymentTransactionDao.getPaymentTransactions(u.getUserId(), ptr.getStartDate(), ptr.getEndDate());
		for(Iterator<PaymentTransaction> it = ptList.iterator();it.hasNext();){
			PaymentTransaction pt  = it.next();
			TollPaymentTransfer tpf = new TollPaymentTransfer();
			
			tpf.setAmount(pt.getAmount());
			tpf.setStatus(pt.getStatus());
			tpf.setTimeStamp(pt.getTimestamp());
			//TODO add toll location and toll operator to the tpf
			response.getList().add(tpf);
		}
		return jsonConverter.getJSON(request, status, response);
	}

}
