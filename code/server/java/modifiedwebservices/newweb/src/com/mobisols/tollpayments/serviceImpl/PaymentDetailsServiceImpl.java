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

// TODO: Auto-generated Javadoc
/**
 * The Class PaymentDetailsServiceImpl.
 */
public class PaymentDetailsServiceImpl implements PaymentDetailsService {
	
	/** The user payment detail dao. */
	private UserPaymentDetailDao userPaymentDetailDao;
	
	/** The user dao. */
	private UserDao userDao;
	
	/** The cc type dao. */
	private CcTypeDao ccTypeDao;
	
	/** The my util date. */
	private MyUtilDate myUtilDate;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.PaymentDetailsService#update(java.lang.String, com.mobisols.tollpayments.request.post.PaymentDetailRequest, java.lang.String)
	 */
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
		pd.setCardNumber(pd.getCardNumber().trim());
		pd.setCardNumber(pd.getCardNumber().replaceAll(" ", ""));
		System.out.println(pd.getCardNumber());
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
			upd.setCcTypeId(CcTypeDao.DEFAULT_CC_TYPE_ID);
		upd.setLastModifiedBy(userDao.getUser(username).getUserId());
		upd.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
		userPaymentDetailDao.update(upd);
		User u =userDao.getUser(username);
		u.setIsActive(UserDao.USER_INACTIVE);
		userDao.update(u);
		response.getNotifications().add("Your details have been updated");
		return jsonConverter.getJSON(request, status,response);
	}
	
	/**
	 * Gets the user payment detail dao.
	 *
	 * @return the user payment detail dao
	 */
	public UserPaymentDetailDao getUserPaymentDetailDao() {
		return userPaymentDetailDao;
	}

	/**
	 * Sets the user payment detail dao.
	 *
	 * @param userPaymentDetailDao the new user payment detail dao
	 */
	public void setUserPaymentDetailDao(UserPaymentDetailDao userPaymentDetailDao) {
		this.userPaymentDetailDao = userPaymentDetailDao;
	}
	
	/**
	 * Gets the user dao.
	 *
	 * @return the user dao
	 */
	public UserDao getUserDao() {
		return userDao;
	}
	
	/**
	 * Sets the user dao.
	 *
	 * @param userDao the new user dao
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	/**
	 * Gets the my util date.
	 *
	 * @return the my util date
	 */
	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}
	
	/**
	 * Sets the my util date.
	 *
	 * @param myUtilDate the new my util date
	 */
	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}
	
	/**
	 * Gets the json converter.
	 *
	 * @return the json converter
	 */
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	
	/**
	 * Sets the json converter.
	 *
	 * @param jsonConverter the new json converter
	 */
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
	
	/**
	 * Gets the cc type dao.
	 *
	 * @return the cc type dao
	 */
	public CcTypeDao getCcTypeDao() {
		return ccTypeDao;
	}
	
	/**
	 * Sets the cc type dao.
	 *
	 * @param ccTypeDao the new cc type dao
	 */
	public void setCcTypeDao(CcTypeDao ccTypeDao) {
		this.ccTypeDao = ccTypeDao;
	}

	
}
