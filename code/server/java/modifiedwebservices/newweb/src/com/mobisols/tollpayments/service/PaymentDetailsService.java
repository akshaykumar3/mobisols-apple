package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.PaymentDetailRequest;

// TODO: Auto-generated Javadoc
/**
 * The Interface PaymentDetailsService.
 */
public interface PaymentDetailsService {

	/** The user payment detail dao. */
	UserPaymentDetailDao userPaymentDetailDao=null;
	
	/** The user dao. */
	UserDao userDao=null;
	
	/** The my util date. */
	MyUtilDate myUtilDate=null;
	
	/**
	 * Update.
	 *
	 * @param request the request
	 * @param pdr the pdr
	 * @param username the username
	 * @return the string
	 */
	public String update(String request,PaymentDetailRequest pdr,String username);
}
