package com.mobisols.tollpayments.myutils;

// TODO: Auto-generated Javadoc
/**
 * The Interface JsonConverter.
 */
public interface JsonConverter {

	/** The request. */
	String request=null;
	
	/** The status. */
	String status=null;
	
	/** The version. */
	String version=null;
	
	/** The response. */
	Object response=null;
	
	/**
	 * Converts the gicen object into json format by adding request version and status of response.
	 *
	 * @param request the request that is to be attached along the required response.
	 * @param status the status of the request that we got
	 * @param o the object that is to converted to json and included as response.
	 * @return the jSON String in the required format.
	 */
	String getJSON(String request, String status, Object o);
	
	/**
	 * Gets the object.
	 *
	 * @param json the json string that is to be converted to the object.
	 * @param className the class name of the object to which the json is to be converted.
	 * @return the object
	 */
	Object getObject(String json, String className);
	
	/**
	 * Gets the request.
	 *
	 * @return the request
	 */
	public String getRequest();

	/**
	 * Sets the request.
	 *
	 * @param request the new request
	 */
	public void setRequest(String request);

	/**
	 * Gets the status.
	 *
	 * @return the status
	 */
	public String getStatus();

	/**
	 * Sets the status.
	 *
	 * @param status the new status
	 */
	public void setStatus(String status);

	/**
	 * Gets the version.
	 *
	 * @return the version
	 */
	public String getVersion();

	/**
	 * Sets the version.
	 *
	 * @param version the new version
	 */
	public void setVersion(String version);

	/**
	 * Gets the response.
	 *
	 * @return the response
	 */
	public Object getResponse();

	/**
	 * Sets the response.
	 *
	 * @param response the new response
	 */
	public void setResponse(Object response);
}
