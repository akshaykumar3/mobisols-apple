package com.mobisols.tollpayments.myutilsImpl;

import java.util.HashMap;

public class ServerConfiguration extends MySingleTon {

	private static ServerConfiguration serverConfiguration=null;
	private HashMap<String, String> hash;
	
	private ServerConfiguration(){
		hash=new HashMap<String, String>();
	}
	
	public static ServerConfiguration getServerConfiguration() {
		if(serverConfiguration==null)
			serverConfiguration=new ServerConfiguration();
		if(serverConfiguration.isDirty())
			{
				serverConfiguration.refresh();
				serverConfiguration.setDirty(false);
			}
		return serverConfiguration;
	}
	
	public String getValue(String key)
	{
		if(serverConfiguration.isDirty())
		{
			serverConfiguration.refresh();
			serverConfiguration.setDirty(false);
		}
		return hash.get(key);
	}
	
	@Override
	public void refresh() {
		// TODO Auto-generated method stub

	}
	
}
