package com.mobisols.tollpayments.serviceImpl;


import java.util.Iterator;
import java.util.Set;

import com.mobisols.tollpayments.dao.UserDao;
import com.mobisols.tollpayments.model.User;
import com.mobisols.tollpayments.model.UserBalanceLog;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.response.get.BalanceInfoResponse;
import com.mobisols.tollpayments.response.get.BalanceLog;
import com.mobisols.tollpayments.service.BalanceInfoService;

// TODO: Auto-generated Javadoc
/**
 * The Class BalanceInfoServiceImpl.
 */
public class BalanceInfoServiceImpl implements BalanceInfoService {

	/** The user dao. */
	private UserDao userDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.BalanceInfoService#getBalanceInfo(java.lang.String, java.lang.String)
	 */
	public String getBalanceInfo(String request,String user) {
		BalanceInfoResponse response=new BalanceInfoResponse();
		String status="success";
		User u=userDao.getUser(user);
		response.setCurrentBalance((u.getUserBalance().getBalance()));
		response.setBalanceId(u.getUserBalance().getUbalId());
		response.setMinBalance(u.getUserType().getMinBalance());
		Set<com.mobisols.tollpayments.model.UserBalanceLog> ubl=u.getUserBalance().getUserBalanceLog();
		for(Iterator it=(Iterator) ubl.iterator();it.hasNext();){
			UserBalanceLog ubl1=(UserBalanceLog) it.next();
			BalanceLog bl=new BalanceLog();
			bl.setDelta(ubl1.getDelta());
			bl.setDescription(ubl1.getAction());
			bl.setTimeStamp(ubl1.getTimestamp());
			response.getBalancelog().add(bl);
		}
		return jsonConverter.getJSON(request, status,response);
	}

	/**
	 * Sets the user dao.
	 *
	 * @param user the new user dao
	 */
	public void setUserDao(UserDao user) {
		this.userDao = user;
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
