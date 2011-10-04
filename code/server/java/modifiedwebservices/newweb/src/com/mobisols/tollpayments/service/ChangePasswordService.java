package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.response.GeneralResponse;

public interface ChangePasswordService {
	public GeneralResponse changePassword(String userName,String password);
}
