package com.mobisols.tollpayments.myutilsImpl;

import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilErrorHandler;
import com.mobisols.tollpayments.response.GeneralResponse;

public class MyUtilErrorHandlerImpl implements MyUtilErrorHandler {

	private JsonConverter jsonConverter;
	
	public String handleException(String request,Exception e)
	{
		GeneralResponse response = new GeneralResponse();
		response.getNotifications().add("Server Error");
		String status = "fail";
		return jsonConverter.getJSON(request, status, response);
	}

	public JsonConverter getJsonConverter() {
		return jsonConverter;
	}

	public void setJsonConverter(JsonConverter jsonConverter) {
		this.jsonConverter = jsonConverter;
	}
}
