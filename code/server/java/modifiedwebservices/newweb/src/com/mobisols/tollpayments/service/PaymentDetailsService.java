package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.PaymentDetailRequest;
import com.mobisols.tollpayments.response.GeneralResponse;

public interface PaymentDetailsService {

	UserPaymentDetailDao userPaymentDetailDao=null;
	UserDao userDao=null;
	MyUtilDate myUtilDate=null;
	public GeneralResponse update(PaymentDetailRequest pdr,String username);
}
