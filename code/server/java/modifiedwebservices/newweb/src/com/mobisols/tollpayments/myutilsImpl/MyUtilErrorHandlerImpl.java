package com.mobisols.tollpayments.myutilsImpl;

import com.mobisols.tollpayments.myutils.JsonConverter;
import com.mobisols.tollpayments.myutils.MyUtilErrorHandler;
import com.mobisols.tollpayments.response.GeneralResponse;

// TODO: Auto-generated Javadoc
/**
 * The Class MyUtilErrorHandlerImpl.
 */
public class MyUtilErrorHandlerImpl implements MyUtilErrorHandler {

	/** The json converter. */
	private JsonConverter jsonConverter;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.MyUtilErrorHandler#handleException(java.lang.String, java.lang.Exception)
	 */
	public String handleException(String request,Exception e)
	{
		e.printStackTrace();
		GeneralResponse response = new GeneralResponse();
		response.getNotifications().add("Server Error");
		String status = "fail";
		return jsonConverter.getJSON(request, status, response);
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
