package com.mobisols.tollpayments.myutilsImpl;

import java.io.IOException;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.UsernamePasswordCredentials;
import org.apache.commons.httpclient.auth.AuthScope;
import org.apache.commons.httpclient.methods.PostMethod;


// TODO: Auto-generated Javadoc
/**
 * The Class SMSUtil.
 */
public class SMSUtil {
	
	/** The sms url. */
	private static String smsURL = ServerConfiguration.getServerConfiguration().getValue("sms_url");
	
	/** The sms user name. */
	private static String smsUserName = ServerConfiguration.getServerConfiguration().getValue("sms_user_name");
	
	/** The sms password. */
	private static String smsPassword = ServerConfiguration.getServerConfiguration().getValue("sms_password");
	
	/**
	 * Send sms.
	 *
	 * @param phone the phone number
	 * @param body the message
	 */
	public static void sendSMS(String phone,String body) {
		 HttpClient httpclient = new HttpClient();
		 //HttpHost proxy = new HttpHost("172.30.0.16", 3128);
		 //httpclient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, proxy);
         httpclient.getState().setCredentials(AuthScope.ANY, 
         new UsernamePasswordCredentials(smsUserName, smsPassword));
                 
         PostMethod pm = new PostMethod(smsURL);
	     pm.addParameter("address", phone);
	     pm.addParameter("message", body);
	
         pm.setDoAuthentication(true);
         try {
             int status = httpclient.executeMethod( pm );
	
	         System.out.println(status + "\n" + pm.getResponseBodyAsString());
	
	        } catch (HttpException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
	            // release any connection resources used by the method
	            pm.releaseConnection();
	        } 
	}
}
