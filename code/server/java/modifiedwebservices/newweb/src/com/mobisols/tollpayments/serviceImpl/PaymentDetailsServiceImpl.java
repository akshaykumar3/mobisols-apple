package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.model.CcType;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilCreditCard;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutilsImpl.MyUtilCreditCardImpl;
import com.mobisols.tollpayments.request.post.PaymentDetailRequest;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.PaymentDetailsService;

public class PaymentDetailsServiceImpl implements PaymentDetailsService {
	private UserPaymentDetailDao userPaymentDetailDao;
	private UserDao userDao;
	private MyUtilDate myUtilDate;
	private JsonConverter jsonConverter;
	
	public String update(String request,PaymentDetailRequest pd,String username) {
		GeneralResponse response=new GeneralResponse();
		String status="success";
		UserPaymentDetail upd=userDao.getUser(username).getUserPaymentDetails();
		upd.setBankAccount(pd.getBankAccount());
		upd.setBankRouting(pd.getBankRouting());
		upd.setCcExpMonth(pd.getExpMonth());
		upd.setCcExpYear(pd.getExpYear());
		if(MyUtilCreditCardImpl.isValidCC(pd.getCardNumber()))
			upd.setCcNumber(pd.getCardNumber());
		else
		{
			status = "fail";
			response.getNotifications().add("Invalid creditcard number");
			return jsonConverter.getJSON(request, status, response);
		}
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
		response.getNotifications().add("Your details have been updated");
		return jsonConverter.getJSON(request, status,response);
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
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}

	
}
