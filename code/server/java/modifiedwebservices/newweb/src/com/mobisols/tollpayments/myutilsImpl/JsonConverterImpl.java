package com.mobisols.tollpayments.myutilsImpl;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.mobisols.tollpayments.myutils.JsonConverter;

// TODO: Auto-generated Javadoc
/**
 * The Class JsonConverterImpl.
 */
public class JsonConverterImpl implements JsonConverter{
	
	/** The request. */
	private String request;
	
	/** The status. */
	private String status;
	
	/** The version. */
	private String version;
	
	/** The response. */
	private Object response;
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#getRequest()
	 */
	public String getRequest() {
		return request;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#setRequest(java.lang.String)
	 */
	public void setRequest(String request) {
		this.request = request;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#getStatus()
	 */
	public String getStatus() {
		return status;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#setStatus(java.lang.String)
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#getVersion()
	 */
	public String getVersion() {
		return version;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#setVersion(java.lang.String)
	 */
	public void setVersion(String version) {
		this.version = version;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#getResponse()
	 */
	public Object getResponse() {
		return response;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#setResponse(java.lang.Object)
	 */
	public void setResponse(Object response) {
		this.response = response;
	}

	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#getJSON(java.lang.String, java.lang.String, java.lang.Object)
	 */
	public String getJSON(String request,String status,Object o){
		Gson gson=new Gson();
		this.response=o;
		this.request=request;
		this.status=status;
		this.version="1.0";
		return gson.toJson(this);
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutils.JsonConverter#getObject(java.lang.String, java.lang.String)
	 */
	public Object getObject(String json,String className){
		Gson gson=new Gson();
		try {
			Object o= gson.fromJson(json, Class.forName(className));
			if(o==null)
				System.out.println("getting a null pointer");
			return o;
		} catch (JsonSyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
}
