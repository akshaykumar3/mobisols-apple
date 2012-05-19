package com.mobisols.tollpayments.utils;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;

public class JsonConverter {
	public static String getJSON(Object o){
		Gson gson=new Gson();
		return gson.toJson(o);
	}
	
	public static Object getObject(String json,String className){
		Gson gson=new Gson();
		try {
			Object o= gson.fromJson(json, Class.forName(className));
			return o;
		} catch (JsonSyntaxException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
