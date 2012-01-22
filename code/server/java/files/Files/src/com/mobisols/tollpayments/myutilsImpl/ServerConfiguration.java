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

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import com.mobisols.tollpayments.dao.ConfigurationDao;
import com.mobisols.tollpayments.daoImpl.ConfigurationDaoImpl;
import com.mobisols.tollpayments.model.Configuration;


public class ServerConfiguration extends MySingleTon {

	public static final String SEURITY_CHECK = "Y";
	public static final String SEURITY_UNCHECK = "N";
	
	private static ServerConfiguration serverConfiguration=null;
	private HashMap<String, String> hash;
	private ConfigurationDao configurationDao;
	
	private ServerConfiguration(){
		hash=new HashMap<String, String>();
		//this.configurationDao = new ConfigurationDaoImpl();
		String[] configFiles = new String[] { "/spring/dao.xml" };  
        BeanFactory factory =  new ClassPathXmlApplicationContext(configFiles);  
        configurationDao  =  (ConfigurationDao ) factory.getBean("dao.tollpayments.configurationDao");  
      
	}
	
	public static ServerConfiguration getServerConfiguration() {
		if(serverConfiguration==null)
			{
				serverConfiguration=new ServerConfiguration();
				serverConfiguration.setDirty(true);
			}
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
			//BufferedReader reader= new BufferedReader(new InputStreamReader(new DataInputStream(new FileInputStream("ServerConfig.txt"))));
			String server = "server";//reader.readLine();
			String version = "1.0";//reader.readLine();
			List<Configuration> list = configurationDao.getKeyValues(server, version);
			for(Iterator<Configuration> it= list.iterator();it.hasNext();)
			{
				Configuration c = it.next();
				hash.put(c.getKey(), c.getValue());
			}

	}
	
}
