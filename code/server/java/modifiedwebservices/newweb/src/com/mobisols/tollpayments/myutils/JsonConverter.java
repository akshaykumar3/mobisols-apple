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
	 * Gets the jSON.
	 *
	 * @param request the request
	 * @param status the status
	 * @param o the o
	 * @return the jSON
	 */
	String getJSON(String request, String status, Object o);
	
	/**
	 * Gets the object.
	 *
	 * @param json the json
	 * @param className the class name
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
