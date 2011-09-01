package com.mobisols.tollpayments.myutilsImpl;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;


import com.mobisols.tollpayments.dao.ConfigurationDao;
import com.mobisols.tollpayments.model.Configuration;


public class ServerConfiguration extends MySingleTon {

	private static ServerConfiguration serverConfiguration=null;
	private HashMap<String, String> hash;
	private ConfigurationDao configurationDao;
	
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
		try {
			BufferedReader reader= new BufferedReader(new InputStreamReader(new DataInputStream(new FileInputStream("ServerConfig.txt"))));
			String server = reader.readLine();
			String version = reader.readLine();
			List<Configuration> list = configurationDao.getKeyValues(server, version);
			for(Iterator<Configuration> it= list.iterator();it.hasNext();)
			{
				Configuration c = it.next();
				hash.put(c.getKey(), c.getValue());
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
}
