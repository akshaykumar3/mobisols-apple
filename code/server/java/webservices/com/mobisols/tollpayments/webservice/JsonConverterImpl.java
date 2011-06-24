package com.mobisols.tollpayments.webservice;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;

public class JsonConverterImpl implements JsonConverter{
	private String request;
	private String status;
	private String version;
	private Object response;
	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public Object getResponse() {
		return response;
	}

	public void setResponse(Object response) {
		this.response = response;
	}

	public String getJSON(String request,String status,Object o){
		Gson gson=new Gson();
		this.response=o;
		this.request=request;
		this.status=status;
		this.version="1.0";
		return gson.toJson(this);
	}
	
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
