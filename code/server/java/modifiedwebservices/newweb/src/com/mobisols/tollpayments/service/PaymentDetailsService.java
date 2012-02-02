package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.PaymentDetailRequest;

/**
 * The Interface PaymentDetailsService.
 * Used to access the paymenst details of the user.
 */
public interface PaymentDetailsService {

	/** The user payment detail dao. */
	UserPaymentDetailDao userPaymentDetailDao=null;
	
	/** The user dao. */
	UserDao userDao=null;
	
	/** The my util date. */
	MyUtilDate myUtilDate=null;
	
	/**
	 * Updates the payment details of the user received in the request.
	 *
	 * @param request the name of webservice request from which the function is called.
	 * @param pdr the Payment Details request object
	 * @param username the username
	 * @return the json string similar to com.mobisols.tollpaymenst.response.GeneralResponse.
	 */
	public String update(String request,PaymentDetailRequest pdr,String username);
}
