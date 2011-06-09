/******************************************************************************
 * JsonConverter
 * 
 * This class is used to convert object to JSON format and vice versa
 *  ****************************************************************************
 * Change list
 * ============================================================================
 * Author					Date					Summary
 * ----------------------------------------------------------------------------
 * Raghukumar		07-JUNE-2011				   JsonConverter
 * 
 *
 */
package com.mobisols.tollpayments.mockwebservices;

import com.google.gson.Gson;

public class JsonConverter {

	String request;
	String status;
	String version;
	Object response;
	public String getJSON(String request,String status,Object o){
		Gson gson=new Gson();
		this.response=o;
		this.request=request;
		this.status=status;
		this.version="1.0";
		return gson.toJson(this);
	}
	
	public Object getObject(String json,Class c){
		Gson gson=new Gson();
		Object o = null;
		o=gson.fromJson(json, c);
		return o;
		
	}
}
