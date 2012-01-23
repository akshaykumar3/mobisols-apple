package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.AddBalanceService;

public class AddBalanceServiceImpl implements AddBalanceService {

	private UserBalanceDao userBalanceDao;
	private JsonConverter jsonConverter;
	
	public String postaddBalanceResponse(String request,AddBalanceRequest ar,String username)
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

	public UserBalanceDao getUserBalanceDao() {
		return userBalanceDao;
	}

	public void setUserBalanceDao(UserBalanceDao userBalanceDao) {
		this.userBalanceDao = userBalanceDao;
	}

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
