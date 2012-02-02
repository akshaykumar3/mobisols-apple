/**
 * 
 */
package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.CcTypeDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailHistoryDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserPaymentDetailHistory;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.admin.PaymentDetailsHistoryRequest;
import com.mobisols.tollpayments.response.admin.PaymentDetailHistory;
import com.mobisols.tollpayments.response.admin.PaymentDetailHistoryResponse;
import com.mobisols.tollpayments.service.PaymentDetailsHistory;

/**
 * @author Raghu
 *
 */
public class PaymentDetailsHistoryImpl implements PaymentDetailsHistory{

	private JsonConverter jsonConverter;
	private UserPaymentDetailHistoryDao userPaymentDetailHistoryDao;
	private UserDao userDao;
	private CcTypeDao ccTypeDao;
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.PaymentDetailsHistory#getPaymentDetailsHistory(java.lang.String, java.sql.Timestamp, java.sql.Timestamp)
	 */
	@Override
	public String getPaymentDetailsHistory(String request,PaymentDetailsHistoryRequest pdr) {
		PaymentDetailHistoryResponse response = new PaymentDetailHistoryResponse();
		String status = "success";
		User u = userDao.getUser(pdr.getUsername());
		if(pdr.getStartDate() == null){
			pdr.setStartDate(new Timestamp(Calendar.getInstance().getTimeInMillis()));
		}
		if(pdr.getEndDate()==null){
			Calendar c = Calendar.getInstance();
			c.setTimeInMillis(pdr.getStartDate().getTime());
			c.add(Calendar.MONTH, -1);
			pdr.setEndDate(new Timestamp(c.getTimeInMillis()));
		}
		List<UserPaymentDetailHistory> updhList = userPaymentDetailHistoryDao.getPaymentHistory(u.getUserPaymentDetails().getUpdId(),
				pdr.getStartDate(),pdr.getEndDate());
		
		for(Iterator<UserPaymentDetailHistory> it = updhList.iterator();it.hasNext();){
			UserPaymentDetailHistory updh = it.next();
			PaymentDetailHistory p = new PaymentDetailHistory();
			p.setAction(updh.getAction());
			p.setAddress1(updh.getAddress1());
			p.setAddress2(updh.getAddress2());
			p.setBankAccount(updh.getBankAccount());
			p.setBankRouting(updh.getBankRouting());
			p.setCardNumber(updh.getCcNumber());
			p.setCardType(ccTypeDao.getCcTypeName(updh.getCcTypeId()).getName());
			p.setCcCVV(updh.getCcCvv());
			p.setCcName(updh.getCcAcName());
			p.setCity(updh.getCity());
			p.setCountry(updh.getCountry());
			p.setEndDate(updh.getEndDate());
			p.setExpMonth(updh.getCcExpMonth());
			p.setExpYear(updh.getCcExpYear());
			p.setPaymentId(updh.getUpdId());
			p.setPayPrefer(updh.getPayPrefer());
			p.setStartDate(updh.getStartDate());
			p.setState(updh.getState());
			p.setZip(updh.getZip());
			
			response.getList().add(p);
		}
		return jsonConverter.getJSON(request, status, response);
	}

}
