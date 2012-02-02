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


// TODO: Auto-generated Javadoc
/**
 * The Class ServerConfiguration.
 */
public class ServerConfiguration extends MySingleTon {

	/** The Constant SEURITY_CHECK. */
	public static final String SEURITY_CHECK = "Y";
	
	/** The Constant SEURITY_UNCHECK. */
	public static final String SEURITY_UNCHECK = "N";
	
	/** The server configuration. */
	private static ServerConfiguration serverConfiguration=null;
	
	/** The hash. */
	private HashMap<String, String> hash;
	
	/** The configuration dao. */
	private ConfigurationDao configurationDao;
	
	/**
	 * Instantiates a new server configuration.
	 */
	private ServerConfiguration(){
		hash=new HashMap<String, String>();
		//this.configurationDao = new ConfigurationDaoImpl();
		String[] configFiles = new String[] { "/spring/dao.xml" };  
        BeanFactory factory =  new ClassPathXmlApplicationContext(configFiles);  
        configurationDao  =  (ConfigurationDao ) factory.getBean("dao.tollpayments.configurationDao");  
      
	}
	
	/**
	 * Gets the server configuration.
	 *
	 * @return the server configuration
	 */
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
	
	/**
	 * Gets the value of a key from server configuration.
	 *
	 * @param key the key
	 * @return the value
	 */
	public String getValue(String key)
	{
		if(serverConfiguration.isDirty())
		{
			serverConfiguration.refresh();
			serverConfiguration.setDirty(false);
		}
		return hash.get(key);
	}
	
	/* (non-Javadoc)
	 * @see com.mobisols.tollpayments.myutilsImpl.MySingleTon#refresh()
	 */
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
