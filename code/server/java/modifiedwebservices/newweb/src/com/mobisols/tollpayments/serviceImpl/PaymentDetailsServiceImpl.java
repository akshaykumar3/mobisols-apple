package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.model.CcType;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.request.post.PaymentDetailRequest;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.PaymentDetailsService;

public class PaymentDetailsServiceImpl implements PaymentDetailsService {
	private UserPaymentDetailDao userPaymentDetailDao;
	private UserDao userDao;
	private MyUtilDate myUtilDate;
	
	public GeneralResponse update(PaymentDetailRequest pd,String username) {
		UserPaymentDetail upd=userDao.getUser(username).getUserPaymentDetails();
		upd.setBankAccount(pd.getBankAccount());
		upd.setBankRouting(pd.getBankRouting());
		upd.setCcExpMonth(pd.getExpMonth());
		upd.setCcExpYear(pd.getExpYear());
		upd.setCcNumber(pd.getCardNumber());
		upd.setClientId(Client.PRESENT_CLIENT);
		upd.setAddress1(pd.getAddress1());
		upd.setAddress2(pd.getAddress2());
		upd.setCcAcName(pd.getCcName());
		upd.setCcCvv(pd.getCcCVV());
		upd.setCity(pd.getCity());
		upd.setCountry(pd.getCountry());
		//TODO set payprefer the form the request
		upd.setPayPrefer("c");
		upd.setState(pd.getState());
		upd.setZip(pd.getZip());
		upd.setCcTypeId(CcType.CCTYPE_ID);
		upd.setLastModifiedBy(userDao.getUser(username).getUserId());
		upd.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
		userPaymentDetailDao.update(upd);
		GeneralResponse response=new GeneralResponse();
		response.setDescription("Your details have been updated");
		return response;
	}
	public UserPaymentDetailDao getUserPaymentDetailDao() {
		return userPaymentDetailDao;
	}

	public void setUserPaymentDetailDao(UserPaymentDetailDao userPaymentDetailDao) {
		this.userPaymentDetailDao = userPaymentDetailDao;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}
	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}

	
}
