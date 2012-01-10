package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.List;

import com.mobisols.tollpayments.dao.PaymentTransactionDao;
import com.mobisols.tollpayments.dao.TollOperatorDao;
import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.dao.UserBalanceLogDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserPaymentDetailHistoryDao;
import com.mobisols.tollpayments.dao.VehicleTollUsageDao;
import com.mobisols.tollpayments.model.Client;
import com.mobisols.tollpayments.model.PaymentTransaction;
import com.mobisols.tollpayments.model.TollOperator;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.model.UserBalanceLog;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.model.VehicleTollUsage;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;
import com.mobisols.tollpayments.paymentprocess.CreditCardProcessing;
import com.mobisols.tollpayments.paymentprocess.PaymentGateway;
import com.mobisols.tollpayments.request.post.MakeTollPaymentsRequest;
import com.mobisols.tollpayments.response.post.MakeTollPaymentsResponse;
import com.mobisols.tollpayments.service.MakeTollPayments;

public class MakeTollPaymentsImpl implements MakeTollPayments {

	private UserDao userDao;
	private VehicleTollUsageDao vehicleTollUsageDao;
	private TollOperatorDao tollOperatorDao;
	private UserBalanceDao userBalanceDao;
	private UserBalanceLogDao userBalanceLogDao;
	private MyUtilDate myUtilDate;
	private PaymentTransactionDao paymentTransactionDao;
	private UserPaymentDetailHistoryDao userPaymentDetailHistoryDao;
	private JsonConverter jsonConverter;
	
	private static final int USER_ID=0;
	private static final int TOLL_OPERATOR_ID=1;
	private static final int PRICE=2;
	private static final String SUCCESS = "";
	
	public String payForTolls(MakeTollPaymentsRequest r,String request)
	{
		MakeTollPaymentsResponse response=new MakeTollPaymentsResponse();
		String status = "success";
		List<String> users;
		if(r!=null)
		{
			users=r.getUsers();
		}
		else
		{
			users=userDao.getUserList();
		}
		ServerConfiguration serverConfiguration = ServerConfiguration.getServerConfiguration();
		List nonPaidTolls=vehicleTollUsageDao.getNonPaidTollUsageByUser();
		PaymentGateway pg=new PaymentGateway();
		
		for(Iterator it = nonPaidTolls.iterator();it.hasNext();)
		{
			Object[] row = (Object[]) it.next();
			User u=userDao.getUser((Integer)row[USER_ID]);
			System.out.println(u.getUserId());
			TollOperator tollOperator = tollOperatorDao.getTollOperator((Integer)row[TOLL_OPERATOR_ID]);
			System.out.println(tollOperator.getTollOperatorId());
			User tollOperatorUser = tollOperator.getUser();
			double price=(Double)row[PRICE];
			UserBalance userBalance = u.getUserBalance();
			Double amount;
			if(userBalance.getBalance()- (price+0.2*price) < u.getUserType().getMinBalance())
			{
				amount = 1.2*price + u.getUserType().getMinBalance() - userBalance.getBalance();
			}
			else
				amount = 1.2*price;
			UserPaymentDetail upd= u.getUserPaymentDetails();
			String expDate = "";
			if(upd.getCcExpMonth()<10)
				expDate = expDate+"0"+upd.getCcExpMonth();
			else
				expDate = expDate+upd.getCcExpMonth();
			expDate = expDate + upd.getCcExpYear();
			String x=pg.getCreditCardProcessing().doPaymentProcess(
					CreditCardProcessing.PAYMENT_ACTION_ADDBALANCE, amount.toString(), 
					upd.getCcType().getName(), upd.getCcNumber(),expDate , upd.getCcCvv().toString(), 
					upd.getCcAcName(), "", upd.getAddress1()+upd.getAddress2(), 
					upd.getCity(), upd.getState(), upd.getZip(), upd.getCountry());
			if(x.equals("Success")||(x.equals("SuccessWithWarning")))
			{
				userBalance.setBalance(userBalance.getBalance()+amount);
				userBalanceDao.save(userBalance);
				userBalance.setBalance(userBalance.getBalance()-price);
				userBalanceDao.save(userBalance);
				UserBalanceLog userLog = userBalanceLogDao.getRecentBalanceLogId(userBalance.getUbalId());
				UserBalance tob=tollOperatorUser.getUserBalance();
				tob.setBalance(tob.getBalance()+price);
				userBalanceDao.save(tob);
				UserBalanceLog tollOperatorLog = userBalanceLogDao.getRecentBalanceLogId(tob.getUbalId());
				PaymentTransaction pt=new PaymentTransaction();
				pt.setAmount(price);
				pt.setClientId(Client.PRESENT_CLIENT);
				pt.setCreatedOn(myUtilDate.getCurrentTimeStamp());
				pt.setLastModifiedBy(User.DEFAULT_USER);
				pt.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
				pt.setStatus("paid ");
				pt.setTimestamp(myUtilDate.getCurrentTimeStamp());
				pt.setToBlId(tollOperatorLog.getUblogId());
				pt.setUpdhId(userPaymentDetailHistoryDao.getLatestUserPaymentDetailHistoryId(userBalance.getUser().getUserPaymentDetails().getUpdId()));
				pt.setUserBlId(userLog.getUblogId());
				paymentTransactionDao.save(pt);
				List l = vehicleTollUsageDao.getNonPaidTolls(u.getUserId(), tollOperator.getTollOperatorId());
				double verifiedAmount =0;
				for(Iterator i= l.iterator();i.hasNext() && verifiedAmount<price;)
				{
					Object[] usage = (Object[]) it.next();
					VehicleTollUsage vt= vehicleTollUsageDao.getVehicleTollUsage(Integer.parseInt((String)usage[0]));
					vt.setPtranId(pt.getPtranId());
					vehicleTollUsageDao.save(vt);
					verifiedAmount = verifiedAmount + Integer.parseInt((String)usage[4]);
				}
				
				//20% amount transfer into home user
				userBalance.setBalance(userBalance.getBalance()-0.2*price);
				userBalanceDao.save(userBalance);
				userLog = userBalanceLogDao.getRecentBalanceLogId(userBalance.getUbalId());
				User admin = userDao.getUser(Integer.parseInt(serverConfiguration.getValue("homeUserId")));
				UserBalance adminBalance = admin.getUserBalance();
				adminBalance.setBalance(adminBalance.getBalance()+0.2*price);
				userBalanceDao.save(adminBalance);
				UserBalanceLog adminLog=userBalanceLogDao.getRecentBalanceLogId(adminBalance.getUbalId());
				
				pt=new PaymentTransaction();
				pt.setAmount(price);
				pt.setClientId(Client.PRESENT_CLIENT);
				pt.setCreatedOn(myUtilDate.getCurrentTimeStamp());
				pt.setLastModifiedBy(User.DEFAULT_USER);
				pt.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
				pt.setStatus("transferred 20% for the amount "+ price + "for the payment of tolls for "+tollOperator.getName());
				pt.setTimestamp(myUtilDate.getCurrentTimeStamp());
				pt.setToBlId(adminLog.getUblogId());
				pt.setUpdhId(userPaymentDetailHistoryDao.getLatestUserPaymentDetailHistoryId(userBalance.getUser().getUserPaymentDetails().getUpdId()));
				pt.setUserBlId(userLog.getUblogId());
				paymentTransactionDao.save(pt);
			}
		}
		
		return jsonConverter.getJSON(request, status,response);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public VehicleTollUsageDao getVehicleTollUsageDao() {
		return vehicleTollUsageDao;
	}

	public void setVehicleTollUsageDao(VehicleTollUsageDao vehicleTollUsageDao) {
		this.vehicleTollUsageDao = vehicleTollUsageDao;
	}

	public TollOperatorDao getTollOperatorDao() {
		return tollOperatorDao;
	}

	public void setTollOperatorDao(TollOperatorDao tollOperatorDao) {
		this.tollOperatorDao = tollOperatorDao;
	}

	public UserBalanceDao getUserBalanceDao() {
		return userBalanceDao;
	}

	public void setUserBalanceDao(UserBalanceDao userBalanceDao) {
		this.userBalanceDao = userBalanceDao;
	}

	public UserBalanceLogDao getUserBalanceLogDao() {
		return userBalanceLogDao;
	}

	public void setUserBalanceLogDao(UserBalanceLogDao userBalanceLogDao) {
		this.userBalanceLogDao = userBalanceLogDao;
	}

	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}

	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}

	public PaymentTransactionDao getPaymentTransactionDao() {
		return paymentTransactionDao;
	}

	public void setPaymentTransactionDao(PaymentTransactionDao paymentTransactionDao) {
		this.paymentTransactionDao = paymentTransactionDao;
	}

	public UserPaymentDetailHistoryDao getUserPaymentDetailHistoryDao() {
		return userPaymentDetailHistoryDao;
	}

	public void setUserPaymentDetailHistoryDao(
			UserPaymentDetailHistoryDao userPaymentDetailHistoryDao) {
		this.userPaymentDetailHistoryDao = userPaymentDetailHistoryDao;
	}

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
	
}
