/*
 * 
 */
package com.mobisols.tollpayments.serviceImpl;

import java.util.Iterator;
import java.util.Set;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserBalanceLog;
import com.mobisols.tollpayments.model.UserVehicle;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutilsImpl.EncryptUtil;
import com.mobisols.tollpayments.myutilsImpl.ServerConfiguration;
import com.mobisols.tollpayments.response.get.AccountDetailsResponse;
import com.mobisols.tollpayments.response.get.BalanceLog;
import com.mobisols.tollpayments.response.get.VehicleDetails;
import com.mobisols.tollpayments.service.AccountDetailsService;

/**
 * The Class AccountDetailsServiceImpl.
 *
 * @author Raghu
 * 
 * AccountDetailsService class is used to account details of a particular user
 */

public class AccountDetailsServiceImpl implements AccountDetailsService {

	/** The user dao. */
	private UserDao userDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.AccountDetailsService#getAccountDetailsResponse(java.lang.String, java.lang.String)
	 */
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
			vd.setStartDate(uv.getVehicleStartDate());
			vd.setEndDate(uv.getVehicleEndDate());
			vd.setVehicleId(uv.getUserVehicleId());
			if(uv.getModel()!=null)
				if(uv.getModel().getMake()!=null)
					vd.setMake(uv.getModel().getMake().getName());
			if(uv.getModel()!=null)
			vd.setModel(uv.getModel().getName());
			if(uv.getManufacturedYear()!=null)
			vd.setManufacturedYear(uv.getManufacturedYear());
			vd.setVin(uv.getVin());
			vd.setColor(uv.getColor());
			
			adr.getVehicleDetails().add(vd);
			//System.out.println(uv.getRegistrationNo()+uv.getRegisteredState());
		}
		
		//TODO Logic for tollpayments
		
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

	/**
	 * Load payment details.
	 *
	 * @param acr the acr
	 * @param u the u
	 */
	private void loadPaymentDetails(AccountDetailsResponse acr, User u) {
		
		String cardNumber = u.getUserPaymentDetails().getCcNumber();
		//cardNumber = EncryptUtil.decrypt(cardNumber, ServerConfiguration.getServerConfiguration().getValue("cc_encryption_key"));
		if(cardNumber!=null && cardNumber.length()>=4){
			String lastDigits = cardNumber.substring(cardNumber.length()-4, cardNumber.length());
			lastDigits = cardNumber.substring(0,cardNumber.length()-5).replaceAll("[0-9]", "x")+lastDigits;
			acr.getPaymentDetails().setCardNumber(lastDigits);
		}
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
