package com.mobisols.tollpayments.service;

import com.mobisols.tollpayments.request.post.ActivateRequest;
import com.mobisols.tollpayments.response.post.ActivateResponse;

public interface ActivateService {
	public ActivateResponse activate(ActivateRequest ar,String userName);
}
