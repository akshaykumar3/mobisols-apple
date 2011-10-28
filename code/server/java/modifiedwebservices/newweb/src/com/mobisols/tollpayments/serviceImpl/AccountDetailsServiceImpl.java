package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.Set;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserBalanceLog;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.AccountDetailsResponse;
import com.mobisols.tollpayments.response.get.BalanceLog;
import com.mobisols.tollpayments.response.get.VehicleDetails;
import com.mobisols.tollpayments.service.AccountDetailsService;

public class AccountDetailsServiceImpl implements AccountDetailsService {

	private UserDao userDao;
	private JsonConverter jsonConverter;
	
	public String getAccountDetailsResponse(String request,String username){
		AccountDetailsResponse adr=new AccountDetailsResponse();
		String status = "success";
		User u=userDao.getUser(username);
		if(u==null)
			return null;
		adr.setUserId(u.getUserId());
		adr.setContactNo(u.getContactNo());
		adr.setIsActive(u.getIsActive());
		loadPaymentDetails(adr, u);
		
		Set<UserVehicle> vehicleList =u.getUserVehicles();
		for(Iterator<UserVehicle> it=  vehicleList.iterator();it.hasNext();)
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
			vd.setMake(uv.getModel().getMake().getName());
			vd.setModel(uv.getModel().getName());
			vd.setManufacturedYear(uv.getManufacturedYear());
			vd.setVin(uv.getVin());
			vd.setColor(uv.getColor());
			
			adr.getVehicleDetails().add(vd);
			System.out.println(uv.getRegistrationNo()+uv.getRegisteredState());
		}
		
		//Logic for tollpayments
		
		adr.getBalanceInfo().setCurrentBalance((u.getUserBalance().getBalance()));
		adr.getBalanceInfo().setBalanceId(u.getUserBalance().getUbalId());
		adr.getBalanceInfo().setMinBalance(u.getUserType().getMinBalance());
		Set<com.mobisols.tollpayments.model.UserBalanceLog> ubl=u.getUserBalance().getUserBalanceLog();
		for(Iterator<UserBalanceLog> it= ubl.iterator();it.hasNext();){
			UserBalanceLog ubl1=(UserBalanceLog) it.next();
			BalanceLog bl=new BalanceLog();
			bl.setDelta(ubl1.getDelta());
			bl.setDescription(ubl1.getAction());
			bl.setTimeStamp(ubl1.getTimestamp());
			adr.getBalanceInfo().getBalancelog().add(bl);
		}
		return jsonConverter.getJSON(request, status, adr);
	}

	private void loadPaymentDetails(AccountDetailsResponse acr, User u) {
		acr.getPaymentDetails().setCardNumber(u.getUserPaymentDetails().getCcNumber());
		acr.getPaymentDetails().setCcName(u.getUserPaymentDetails().getCcAcName());
		if(u.getUserPaymentDetails().getCcType()==null)
			acr.getPaymentDetails().setCardType(null);
		else
			acr.getPaymentDetails().setCardType(u.getUserPaymentDetails().getCcType().getName());
		acr.getPaymentDetails().setExpMonth(u.getUserPaymentDetails().getCcExpMonth());
		acr.getPaymentDetails().setExpYear(u.getUserPaymentDetails().getCcExpYear());
		acr.getPaymentDetails().setBankRouting(u.getUserPaymentDetails().getBankRouting());
		acr.getPaymentDetails().setBankAccount(u.getUserPaymentDetails().getBankAccount());
		acr.getPaymentDetails().setPaymentId(u.getUserPaymentDetails().getUpdId());
		acr.getPaymentDetails().setAddress1(u.getUserPaymentDetails().getAddress1());
		acr.getPaymentDetails().setAddress2(u.getUserPaymentDetails().getAddress2());
		if(u.getUserPaymentDetails().getCcCvv()==null)
			acr.getPaymentDetails().setCcCVV(0);
		else
			acr.getPaymentDetails().setCcCVV(u.getUserPaymentDetails().getCcCvv());
		acr.getPaymentDetails().setCity(u.getUserPaymentDetails().getCity());
		acr.getPaymentDetails().setCountry(u.getUserPaymentDetails().getCountry());
		acr.getPaymentDetails().setPayPrefer(u.getUserPaymentDetails().getPayPrefer());
		acr.getPaymentDetails().setState(u.getUserPaymentDetails().getState());
		acr.getPaymentDetails().setZip(u.getUserPaymentDetails().getZip());
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
