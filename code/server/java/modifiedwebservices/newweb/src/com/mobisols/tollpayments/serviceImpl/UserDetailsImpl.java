/**
 * 
 */
package com.mobisols.tollpayments.serviceImpl;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.mobisols.tollpayments.dao.PaymentTransactionDao;
import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.dao.UserVehicleHistoryDao;
import com.mobisols.tollpayments.model.PaymentTransaction;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserPaymentDetail;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.response.admin.TollPaymentTransfer;
import com.mobisols.tollpayments.response.admin.UserDetailsResponse;
import com.mobisols.tollpayments.response.admin.VehicleDetail;
import com.mobisols.tollpayments.service.UserDetails;

/**
 * @author Raghu
 *
 */
public class UserDetailsImpl implements UserDetails {

	private JsonConverter jsonConverter;
	private UserDao userDao;
	private UserVehicleHistoryDao userVehicleHistoryDao;
	private PaymentTransactionDao paymentTransactionDao;
	private MyUtilDate myUtilDate;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.UserDetails#getUserDetails(java.lang.String)
	 */
	@Override
	public String getUserDetails(String request,String username) {
		UserDetailsResponse response = new UserDetailsResponse();
		String status = "success";
		User u = userDao.getUser(username);
		response.setUserName(username);
		response.setPassword(u.getPassword());
		response.setCurrentBalance(u.getUserBalance().getBalance());
		response.setMinBalance(u.getUserType().getMinBalance());
		
		UserPaymentDetail upd =  u.getUserPaymentDetails();
		response.getPaymentDetails().setAddress1(upd.getAddress1());
		response.getPaymentDetails().setAddress2(upd.getAddress2());
		response.getPaymentDetails().setBankAccount(upd.getBankAccount());
		response.getPaymentDetails().setBankRouting(upd.getBankRouting());
		response.getPaymentDetails().setCardNumber(upd.getCcNumber());
		response.getPaymentDetails().setCardType(upd.getCcType().getName());
		response.getPaymentDetails().setCcCVV(upd.getCcCvv());
		response.getPaymentDetails().setCcName(upd.getCcAcName());
		response.getPaymentDetails().setCity(upd.getCity());
		response.getPaymentDetails().setCountry(upd.getCountry());
		response.getPaymentDetails().setExpMonth(upd.getCcExpMonth());
		response.getPaymentDetails().setExpYear(upd.getCcExpYear());
		response.getPaymentDetails().setPaymentId(upd.getUpdId());
		response.getPaymentDetails().setPayPrefer(upd.getPayPrefer());
		response.getPaymentDetails().setState(upd.getState());
		response.getPaymentDetails().setZip(upd.getZip());
		
		Set<UserVehicle> uvList = u.getUserVehicles();
		
		for(Iterator<UserVehicle> it = uvList.iterator();it.hasNext();){
			UserVehicle uv = it.next();
			VehicleDetail vd = new VehicleDetail();
			
			vd.setColor(uv.getColor());
			vd.setEndDate(uv.getVehicleEndDate());
			vd.setMake(uv.getModel().getMake().getName());
			vd.setManufacturedYear(uv.getManufacturedYear().toString());
			vd.setModel(uv.getModel().getName());
			vd.setRegNo(uv.getRegistrationNo());
			vd.setStartDate(uv.getVehicleStartDate());
			vd.setState(uv.getRegisteredState());
			vd.setStatus(uv.getIsActive());
			vd.setVehicleId(uv.getUserVehicleId());
			vd.setVin(uv.getVin());
			vd.setDateAdded(userVehicleHistoryDao.getDateAdded(uv.getUserVehicleId()));
			vd.setDateDeleted(userVehicleHistoryDao.getDateDeleted(uv.getUserVehicleId()));
			response.getVehicleDetails().add(vd);
		}
		
		Timestamp today = myUtilDate.getCurrentTimeStamp();
		Calendar c = Calendar.getInstance();
		c.add(Calendar.MONTH, -1);
		List<PaymentTransaction> ptranList = paymentTransactionDao.getPaymentTransactions(u.getUserId(), today , new Timestamp(c.getTimeInMillis()));
		
		for(Iterator<PaymentTransaction> it = ptranList.iterator();it.hasNext();){
			PaymentTransaction pt = it.next();
			TollPaymentTransfer tpf = new TollPaymentTransfer();
			
			tpf.setAmount(pt.getAmount());
			tpf.setStatus(pt.getStatus());
			tpf.setTimeStamp(pt.getTimestamp());
			//TODO add toll location and toll operator to the tpf
			response.getTollPayments().add(tpf);
		}
		return jsonConverter.getJSON(request, status, response);
	}

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public UserVehicleHistoryDao getUserVehicleHistoryDao() {
		return userVehicleHistoryDao;
	}

	public void setUserVehicleHistoryDao(UserVehicleHistoryDao userVehicleHistoryDao) {
		this.userVehicleHistoryDao = userVehicleHistoryDao;
	}

	public PaymentTransactionDao getPaymentTransactionDao() {
		return paymentTransactionDao;
	}

	public void setPaymentTransactionDao(PaymentTransactionDao paymentTransactionDao) {
		this.paymentTransactionDao = paymentTransactionDao;
	}

	public MyUtilDate getMyUtilDate() {
		return myUtilDate;
	}

	public void setMyUtilDate(MyUtilDate myUtilDate) {
		this.myUtilDate = myUtilDate;
	}

}
