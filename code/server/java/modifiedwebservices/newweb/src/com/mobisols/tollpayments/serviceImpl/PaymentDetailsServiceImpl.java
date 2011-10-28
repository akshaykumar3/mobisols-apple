package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.CcTypeDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailDao;
import com.mobisols.tollpayments.model.CcType;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutilsImpl.MyValidationUtil;
import com.mobisols.tollpayments.request.post.PaymentDetailRequest;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.PaymentDetailsService;

public class PaymentDetailsServiceImpl implements PaymentDetailsService {
	private UserPaymentDetailDao userPaymentDetailDao;
	private UserDao userDao;
	private CcTypeDao ccTypeDao;
	private MyUtilDate myUtilDate;
	private JsonConverter jsonConverter;
	
	@SuppressWarnings("deprecation")
	public String update(String request,PaymentDetailRequest pd,String username) {
		GeneralResponse response=new GeneralResponse();
		String status="success";
		if(!(pd.getExpYear() == myUtilDate.getCurrentDate().getYear() && pd.getExpMonth() >= myUtilDate.getCurrentDate().getMonth()) 
				&& !(pd.getExpYear()>myUtilDate.getCurrentDate().getYear()))
		{
			response.getNotifications().add("Invalid Expiry Date");
			status="fail";
		}
		if(!MyValidationUtil.isValidCC(pd.getCardNumber())){
			response.getNotifications().add("Invalid Credit Card");
			status = "fail";
		}
		if(status.equals("fail"))
			return jsonConverter.getJSON(request, status, response);
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
		if(ccTypeDao.getCcTypeId(pd.getCardType())!=null)
			upd.setCcTypeId(ccTypeDao.getCcTypeId(pd.getCardType()));
		else
			upd.setCcTypeId(CcType.CCTYPE_ID);
		upd.setLastModifiedBy(userDao.getUser(username).getUserId());
		upd.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
		userPaymentDetailDao.update(upd);
		User u =userDao.getUser(username);
		u.setIsActive(UserDao.USER_INACTIVE);
		userDao.update(u);
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
	public CcTypeDao getCcTypeDao() {
		return ccTypeDao;
	}
	public void setCcTypeDao(CcTypeDao ccTypeDao) {
		this.ccTypeDao = ccTypeDao;
	}

	
}
