package com.mobisols.tollpayments.myutilsImpl;

import java.util.HashMap;
import java.util.Map;

import org.apache.http.HttpHost;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.impl.client.DefaultHttpClient;

import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.SmsFactory;
import com.twilio.sdk.resource.instance.Account;

public class SMSUtil {
	public static String ACCOUNT_SID="AC75e5b6f3af084effa94c7bb3f6a32d02";
	public static String AUTH_TOKEN="f7c160f27613e29c8668ebe0d7c1a206";
	public static String fromPhoneNumber = "(415) 599 2671";
	
	public static void sendSMS(String phone,String body) {
		// TODO Auto-generated method stub
		TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
		DefaultHttpClient cl  = new DefaultHttpClient();
		//HttpHost proxy = new HttpHost("172.30.0.10", 3128);
		//cl.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, proxy);
		client.setHttpclient(cl);
		Account mainAccount = client.getAccount();
		SmsFactory smsFactory = mainAccount.getSmsFactory();
				Map<String, String> smsParams = new HashMap<String, String>();
				smsParams.put("To", phone); // Replace with a valid phone number
				smsParams.put("From", fromPhoneNumber); // Replace with a valid phone
															// number in your account
				smsParams.put("Body", body);
				try {
					smsFactory.create(smsParams);
				} catch (TwilioRestException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
	}
}
