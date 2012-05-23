package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.AddBalanceService;

/**
 * The Class AddBalanceServiceImpl.
 */
public class AddBalanceServiceImpl implements AddBalanceService {

	/** The user balance dao. */
	private UserBalanceDao userBalanceDao;
	
	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.service.AddBalanceService#postaddBalanceResponse(java.lang.String, com.mobisols.tollpayments.request.post.AddBalanceRequest, java.lang.String)
	 */
	public String addBalanceResponse(String request,AddBalanceRequest ar,String username)
	{
		GeneralResponse gr=new GeneralResponse();
		String status="success";
		UserBalance ub=userBalanceDao.getUserBalance(username);
		ub.setBalance(ar.getAmount());
		ub.setLastModifiedBy(ub.getUserId());
		userBalanceDao.save(ub);
		gr.setDescription("Balance successfully updated");
		return jsonConverter.getJSON(request, status,gr);
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
