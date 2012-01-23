package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.PaymentDetailRequest;

public interface PaymentDetailsService {

	UserPaymentDetailDao userPaymentDetailDao=null;
	UserDao userDao=null;
	MyUtilDate myUtilDate=null;
	public String update(String request,PaymentDetailRequest pdr,String username);
}
