package com.mobisols.tollpayments.data;

import java.util.HashMap;

public class ClientConfiguration {
	private static ClientConfiguration clientConfiguration=null;
	
	private HashMap<String, String> hashmap;
	
	private ClientConfiguration()
	{
		hashmap = new HashMap<String, String>();
	}
	
	public static ClientConfiguration getInstance(){
		if(clientConfiguration == null)
		{
			clientConfiguration = new ClientConfiguration();
		}
		return clientConfiguration;
	}
	
	public String getValue(String key){
		return hashmap.get(key);
	}
	
	public void setValue(String key,String value){
		hashmap.put(key, value);
	}
	
	public void clear() {
		hashmap.clear();
	}
}
