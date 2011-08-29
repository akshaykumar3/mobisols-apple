package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.paymentprocess.PaymentGateway;
import com.mobisols.tollpayments.response.post.CheckUserBalanceResponse;
import com.mobisols.tollpayments.service.CheckUserBalance;

public class CheckUserBalanceImpl implements CheckUserBalance {
	public static final double MIN_BALANCE=2;
	public static final double MIN_TRANS_AMOUNT=10;
	public static final int SUCCESS=1;
	
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
				int x=paymentGateway.getCreditCardProcessing().process(upd.getCcNumber(), 
						upd.getCcAcName(), upd.getCcExpYear(),MIN_TRANS_AMOUNT);
				if(x == SUCCESS)
				{
					UserBalance ub=u.getUserBalance();
					ub.setBalance(ub.getBalance()+MIN_TRANS_AMOUNT);
					userBalanceDao.save(ub);
					
				}
				else
				{
					//TODO what need to be done if it is not success
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
	
}
