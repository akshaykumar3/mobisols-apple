package com.mobisols.tollpayments.serviceImpl;

import com.mobisols.tollpayments.dao.UserBalanceDao;
import com.mobisols.tollpayments.model.UserBalance;
import com.mobisols.tollpayments.request.post.AddBalanceRequest;
import com.mobisols.tollpayments.response.GeneralResponse;
import com.mobisols.tollpayments.service.AddBalanceService;

public class AddBalanceServiceImpl implements AddBalanceService {

	private UserBalanceDao userBalanceDao;
	
	public GeneralResponse postaddBalanceResponse(AddBalanceRequest ar,String username)
	{
		GeneralResponse gr=new GeneralResponse();
		UserBalance ub=userBalanceDao.getUserBalance(username);
		ub.setBalance(ar.getAmount());
		ub.setLastModifiedBy(ub.getUserId());
		userBalanceDao.save(ub);
		gr.setDescription("Balance successfully updated");
		return gr;
	}
}
