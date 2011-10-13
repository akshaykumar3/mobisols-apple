package com.mobisols.tollpayments.service;


import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.request.post.ActivateRequest;

public interface ActivateService {
	JsonConverter jsonConverter=null;
	public String activate(String request,ActivateRequest ar,String userName);
}
