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
import com.mobisols.tollpayments.model.UserVehicleHistory;
import com.mobisols.tollpayments.model.VehicleTollUsage;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutilsImpl.EncryptUtil;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;
import com.mobisols.tollpayments.paymentprocess.CreditCardProcessing;
import com.mobisols.tollpayments.paymentprocess.PaymentGateway;
import com.mobisols.tollpayments.request.post.MakeTollPaymentsRequest;
import com.mobisols.tollpayments.response.post.MakeTollPaymentsResponse;
import com.mobisols.tollpayments.service.MakeTollPayments;

// TODO: Auto-generated Javadoc
/**
 * The Class MakeTollPaymentsImpl.
 */
public class MakeTollPaymentsImpl implements MakeTollPayments {

	/** The user dao. */
	private UserDao userDao;
	
	/** The vehicle toll usage dao. */
	private VehicleTollUsageDao vehicleTollUsageDao;
	
	/** The toll operator dao. */
	private TollOperatorDao tollOperatorDao;
	
	/** The user balance dao. */
	private UserBalanceDao userBalanceDao;
	
	/** The user balance log dao. */
	private UserBalanceLogDao userBalanceLogDao;
	
	/** The my util date. */
	private MyUtilDate myUtilDate;
	
	/** The payment transaction dao. */
	private PaymentTransactionDao paymentTransactionDao;
	
	/** The user payment detail history dao. */
	private UserPaymentDetailHistoryDao userPaymentDetailHistoryDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/*private static final int USER_ID=0;
	private static final int TOLL_OPERATOR_ID=1;
	private static final int PRICE=2;
	private static final String SUCCESS = "";*/
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.MakeTollPayments#payForTolls(com.mobisols.tollpayments.request.post.MakeTollPaymentsRequest, java.lang.String)
	 */
	public String payForTolls(MakeTollPaymentsRequest r,String request){
		MakeTollPaymentsResponse response=new MakeTollPaymentsResponse();
		String status = "success";
		List<String> users = null;
		if(r!=null)
		{
			users=r.getUsers();
		}
		else
		{
			users=userDao.getUserList();
		}
		ServerConfiguration serverConfiguration = ServerConfiguration.getServerConfiguration();
		List<VehicleTollUsage> nonPaidTolls=vehicleTollUsageDao.getNonPaidTollUsage();
		PaymentGateway pg=new PaymentGateway();
		
		for(Iterator<VehicleTollUsage> it = nonPaidTolls.iterator();it.hasNext();){
			VehicleTollUsage vtu = it.next();
			UserVehicleHistory uvh = vtu.getUserVehicleHistory();
			User u = userDao.getUser(uvh.getUserId());
			UserBalance ub = u.getUserBalance();
			double price = vtu.getTollPriceHistory().getSellingPrice();
			if(ub.getBalance()- price < u.getUserType().getMinBalance()){
				UserPaymentDetail upd = u.getUserPaymentDetails();
				Double amount = 10.0;
				String expDate = "";
				if(upd.getCcExpMonth()<10)
					expDate = expDate+"0"+upd.getCcExpMonth();
				else
					expDate = expDate+upd.getCcExpMonth();
				expDate = expDate + upd.getCcExpYear();
				String x=pg.getCreditCardProcessing().doPaymentProcess(
						CreditCardProcessing.PAYMENT_ACTION_ADDBALANCE, amount.toString(), 
						upd.getCcType().getName(), EncryptUtil.decrypt(upd.getCcNumber(), ServerConfiguration.getServerConfiguration().getValue("cc_encryption_key")),expDate , upd.getCcCvv().toString(), 
						upd.getCcAcName(), "", upd.getAddress1()+upd.getAddress2(), 
						upd.getCity(), upd.getState(), upd.getZip(), upd.getCountry());
				if(x.equals("Success")||(x.equals("SuccessWithWarning")))
				{
					ub.setBalance(ub.getBalance()+amount);
					userBalanceDao.save(ub);
				}
			}
			if(ub.getBalance()-price > u.getUserType().getMinBalance()){
				ub.setBalance(ub.getBalance() - price);
				userBalanceDao.save(ub);
				UserBalanceLog ubl = userBalanceLogDao.getRecentBalanceLogId(ub.getUbalId());
				TollOperator to = vtu.getTollLocation().getTollOperator();
				UserBalance tob = to.getUser().getUserBalance();
				tob.setBalance(tob.getBalance()+vtu.getTollPriceHistory().getCostPrice());
				
				UserBalanceLog tollOperatorLog = userBalanceLogDao.getRecentBalanceLogId(tob.getUbalId());
				
				PaymentTransaction pt=new PaymentTransaction();
				pt.setAmount(price);
				pt.setClientId(Client.PRESENT_CLIENT);
				pt.setCreatedOn(myUtilDate.getCurrentTimeStamp());
				pt.setLastModifiedBy(UserDao.DEFAULT_USER);
				pt.setLastModifiedOn(myUtilDate.getCurrentTimeStamp());
				pt.setStatus("paid");
				pt.setTimestamp(myUtilDate.getCurrentTimeStamp());
				pt.setToBlId(tollOperatorLog.getUblogId());
				pt.setUpdhId(userPaymentDetailHistoryDao.getLatestUserPaymentDetailHistoryId(ub.getUser().getUserPaymentDetails().getUpdId()));
				pt.setUserBlId(ubl.getUblogId());
				paymentTransactionDao.save(pt);
				
				vtu.setPtranId(pt.getPtranId());
				vehicleTollUsageDao.save(vtu);
			}
		}
		return jsonConverter.getJSON(request, status,response);
	}
	
	/*public String payForTolls(MakeTollPaymentsRequest r,String request)
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
	}*/

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
	 * Gets the vehicle toll usage dao.
	 *
	 * @return the vehicle toll usage dao
	 */
	public VehicleTollUsageDao getVehicleTollUsageDao() {
		return vehicleTollUsageDao;
	}

	/**
	 * Sets the vehicle toll usage dao.
	 *
	 * @param vehicleTollUsageDao the new vehicle toll usage dao
	 */
	public void setVehicleTollUsageDao(VehicleTollUsageDao vehicleTollUsageDao) {
		this.vehicleTollUsageDao = vehicleTollUsageDao;
	}

	/**
	 * Gets the toll operator dao.
	 *
	 * @return the toll operator dao
	 */
	public TollOperatorDao getTollOperatorDao() {
		return tollOperatorDao;
	}

	/**
	 * Sets the toll operator dao.
	 *
	 * @param tollOperatorDao the new toll operator dao
	 */
	public void setTollOperatorDao(TollOperatorDao tollOperatorDao) {
		this.tollOperatorDao = tollOperatorDao;
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
	 * Gets the user balance log dao.
	 *
	 * @return the user balance log dao
	 */
	public UserBalanceLogDao getUserBalanceLogDao() {
		return userBalanceLogDao;
	}

	/**
	 * Sets the user balance log dao.
	 *
	 * @param userBalanceLogDao the new user balance log dao
	 */
	public void setUserBalanceLogDao(UserBalanceLogDao userBalanceLogDao) {
		this.userBalanceLogDao = userBalanceLogDao;
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
	 * Gets the payment transaction dao.
	 *
	 * @return the payment transaction dao
	 */
	public PaymentTransactionDao getPaymentTransactionDao() {
		return paymentTransactionDao;
	}

	/**
	 * Sets the payment transaction dao.
	 *
	 * @param paymentTransactionDao the new payment transaction dao
	 */
	public void setPaymentTransactionDao(PaymentTransactionDao paymentTransactionDao) {
		this.paymentTransactionDao = paymentTransactionDao;
	}

	/**
	 * Gets the user payment detail history dao.
	 *
	 * @return the user payment detail history dao
	 */
	public UserPaymentDetailHistoryDao getUserPaymentDetailHistoryDao() {
		return userPaymentDetailHistoryDao;
	}

	/**
	 * Sets the user payment detail history dao.
	 *
	 * @param userPaymentDetailHistoryDao the new user payment detail history dao
	 */
	public void setUserPaymentDetailHistoryDao(
			UserPaymentDetailHistoryDao userPaymentDetailHistoryDao) {
		this.userPaymentDetailHistoryDao = userPaymentDetailHistoryDao;
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
