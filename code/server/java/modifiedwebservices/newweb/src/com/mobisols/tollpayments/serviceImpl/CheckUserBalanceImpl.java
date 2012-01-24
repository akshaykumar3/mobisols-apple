package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;
import com.mobisols.tollpayments.paymentprocess.CreditCardProcessing;
import com.mobisols.tollpayments.paymentprocess.PaymentGateway;
import com.mobisols.tollpayments.response.post.CheckUserBalanceResponse;
import com.mobisols.tollpayments.service.CheckUserBalance;

// TODO: Auto-generated Javadoc
/**
 * The Class CheckUserBalanceImpl.
 */
public class CheckUserBalanceImpl implements CheckUserBalance {
	
	/** The Constant MIN_BALANCE. */
	public static final double MIN_BALANCE=Double.parseDouble(ServerConfiguration.getServerConfiguration().getValue("min_balance"));
	
	/** The Constant MIN_TRANS_AMOUNT. */
	public static final Double MIN_TRANS_AMOUNT=Double.parseDouble(ServerConfiguration.getServerConfiguration().getValue("min_trans_amount"));
	
	/** The status. */
	String status="success";
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/** The user dao. */
	private UserDao userDao;
	
	/** The user balance dao. */
	private UserBalanceDao userBalanceDao;
	
	/** The payment gateway. */
	private PaymentGateway paymentGateway;
	
	/**
	 * Check.
	 *
	 * @param users the users
	 * @return the check user balance response
	 */
	public CheckUserBalanceResponse check(List<String> users)
	{
		CheckUserBalanceResponse response=new CheckUserBalanceResponse();
		if(users==null)
		{
			users=userDao.getUserList();
		}
		for(Iterator<String> it=users.iterator();it.hasNext();)
		{
			User u=userDao.getUser(it.next());
			if(u.getUserBalance().getBalance()<MIN_BALANCE)
			{
				UserPaymentDetail upd=u.getUserPaymentDetails();
				String expDate = "";
				if(upd.getCcExpMonth()<10)
					expDate = expDate+"0"+upd.getCcExpMonth();
				else
					expDate = expDate+upd.getCcExpMonth();
				expDate = expDate + upd.getCcExpYear();
				String x=paymentGateway.getCreditCardProcessing().doPaymentProcess(
						CreditCardProcessing.PAYMENT_ACTION_ADDBALANCE, MIN_TRANS_AMOUNT.toString(), 
						upd.getCcType().getName(), upd.getCcNumber(),expDate , upd.getCcCvv().toString(), 
						upd.getCcAcName(), "", upd.getAddress1()+upd.getAddress2(), 
						upd.getCity(), upd.getState(), upd.getZip(), upd.getCountry());
				if(x.equals("Success") || x.equals("SuccessWithWarning"))
				{
					UserBalance ub=u.getUserBalance();
					ub.setBalance(ub.getBalance()+MIN_TRANS_AMOUNT);
					userBalanceDao.save(ub);
					
				}
			}
		}
		return response;
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
	 * Gets the user balance dao.
	 *
	 * @return the user balance dao
	 */
	public UserBalanceDao getUserBalanceDao() {
		return userBalanceDao;
	}
	
	/**
	 * Sets the user balance dao.
	 *
	 * @param userBalanceDao the new user balance dao
	 */
	public void setUserBalanceDao(UserBalanceDao userBalanceDao) {
		this.userBalanceDao = userBalanceDao;
	}
	
	/**
	 * Gets the payment gateway.
	 *
	 * @return the payment gateway
	 */
	public PaymentGateway getPaymentGateway() {
		return paymentGateway;
	}
	
	/**
	 * Sets the payment gateway.
	 *
	 * @param paymentGateway the new payment gateway
	 */
	public void setPaymentGateway(PaymentGateway paymentGateway) {
		this.paymentGateway = paymentGateway;
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
	
}
