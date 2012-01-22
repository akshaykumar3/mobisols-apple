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

public class CheckUserBalanceImpl implements CheckUserBalance {
	public static final double MIN_BALANCE=Double.parseDouble(ServerConfiguration.getServerConfiguration().getValue("min_balance"));
	public static final Double MIN_TRANS_AMOUNT=Double.parseDouble(ServerConfiguration.getServerConfiguration().getValue("min_trans_amount"));
	
	String status="success";
	private JsonConverter jsonConverter;
	
	private UserDao userDao;
	private UserBalanceDao userBalanceDao;
	private PaymentGateway paymentGateway;
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
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public UserBalanceDao getUserBalanceDao() {
		return userBalanceDao;
	}
	public void setUserBalanceDao(UserBalanceDao userBalanceDao) {
		this.userBalanceDao = userBalanceDao;
	}
	public PaymentGateway getPaymentGateway() {
		return paymentGateway;
	}
	public void setPaymentGateway(PaymentGateway paymentGateway) {
		this.paymentGateway = paymentGateway;
	}
	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}
	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
	
}
