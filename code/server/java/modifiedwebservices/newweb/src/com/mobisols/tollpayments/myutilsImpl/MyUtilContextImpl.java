package com.mobisols.tollpayments.myutilsImpl;

import javax.ws.rs.core.HttpHeaders;

import com.mobisols.tollpayments.myutils.MyUtilContext;
import com.sun.jersey.core.util.Base64;

// TODO: Auto-generated Javadoc
/**
 * The Class MyUtilContextImpl.
 */
public class MyUtilContextImpl implements MyUtilContext {

	/**
	 * Gets the user name.
	 *
	 * @param header the header
	 * @return the user name
	 */
	public static String getUserName(HttpHeaders header)
	{
		String auth= header.getRequestHeader("authorization").get(0);
		auth = auth.substring("Basic ".length());
		String[] values = new String(Base64.base64Decode(auth)).split(":");
		return values[0];
		//return "harishmobisols.com";
	}
}
