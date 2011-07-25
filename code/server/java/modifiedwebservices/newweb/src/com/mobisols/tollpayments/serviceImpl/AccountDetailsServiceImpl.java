package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.Set;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.model.UserBalanceLog;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.response.get.AccountDetailsResponse;
import com.mobisols.tollpayments.response.get.BalanceLog;
import com.mobisols.tollpayments.response.get.VehicleDetails;
import com.mobisols.tollpayments.service.AccountDetailsService;

public class AccountDetailsServiceImpl implements AccountDetailsService {

	private UserDao userDao;
	
	public AccountDetailsResponse getAccountDetailsResponse(String username){
		AccountDetailsResponse acr=new AccountDetailsResponse(); 
		User u=userDao.getUser(username);
		if(u==null)
			return null;
		acr.setUserId(u.getUserId());
		acr.setContactNo(u.getContactNo());
		
		acr.getPaymentDetails().setCardNumber(u.getUserPaymentDetails().getCcNumber());
		acr.getPaymentDetails().setCcName(u.getUserPaymentDetails().getCcAcName());
		acr.getPaymentDetails().setCardType(u.getUserPaymentDetails().getCcType().getDescription());
		acr.getPaymentDetails().setExpMonth(u.getUserPaymentDetails().getCcExpMonth());
		acr.getPaymentDetails().setExpYear(u.getUserPaymentDetails().getCcExpYear());
		acr.getPaymentDetails().setBankRouting(u.getUserPaymentDetails().getBankRouting());
		acr.getPaymentDetails().setBankAccount(u.getUserPaymentDetails().getBankAccount());
		acr.getPaymentDetails().setPaymentId(u.getUserPaymentDetails().getUpdId());
		acr.getPaymentDetails().setAddress1(u.getUserPaymentDetails().getAddress1());
		acr.getPaymentDetails().setAddress2(u.getUserPaymentDetails().getAddress2());
		acr.getPaymentDetails().setCcCVV(u.getUserPaymentDetails().getCcCvv());
		acr.getPaymentDetails().setCity(u.getUserPaymentDetails().getCity());
		acr.getPaymentDetails().setCountry(u.getUserPaymentDetails().getCountry());
		acr.getPaymentDetails().setPayPrefer(u.getUserPaymentDetails().getPayPrefer());
		acr.getPaymentDetails().setState(u.getUserPaymentDetails().getState());
		acr.getPaymentDetails().setZip(u.getUserPaymentDetails().getZip());
		
		Set<UserVehicle> vehicleList =u.getUserVehicles();
		for(Iterator it=  (Iterator) vehicleList.iterator();it.hasNext();)
		{
			UserVehicle uv=(UserVehicle) it.next();
			VehicleDetails vd=new VehicleDetails();
			vd.setIsActive(uv.getIsActive());
			vd.setRegistration(uv.getRegistrationNo());
			vd.setState(uv.getRegisteredState());
			vd.setOwnerType(uv.getOwnerType().getName());
			vd.setType(uv.getVehicleType().getName());
			vd.setStartDate(uv.getVehicleStartDate());
			vd.setEndDate(uv.getVehicleEndDate());
			vd.setVehicleId(uv.getUserVehicleId());
			acr.getVehicleDetails().add(vd);
		}
		
		//Logic for tollpayments
		
		acr.getBalanceInfo().setCurrentBalance((u.getUserBalance().getBalance()));
		acr.getBalanceInfo().setBalanceId(u.getUserBalance().getUbalId());
		acr.getBalanceInfo().setMinBalance(u.getUserType().getMinBalance());
		Set<com.mobisols.tollpayments.model.UserBalanceLog> ubl=u.getUserBalance().getUserBalanceLog();
		for(Iterator it=(Iterator) ubl.iterator();it.hasNext();){
			UserBalanceLog ubl1=(UserBalanceLog) it.next();
			BalanceLog bl=new BalanceLog();
			bl.setDelta(ubl1.getDelta());
			bl.setDescription(ubl1.getAction());
			bl.setTimeStamp(ubl1.getTimestamp());
			acr.getBalanceInfo().getBalancelog().add(bl);
		}
		return acr;
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
}
