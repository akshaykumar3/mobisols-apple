package com.mobisols.tollpayments.paymentprocess;

import com.paypal.sdk.core.nvp.NVPDecoder;
import com.paypal.sdk.core.nvp.NVPEncoder;
import com.paypal.sdk.profiles.APIProfile;
import com.paypal.sdk.profiles.ProfileFactory;
import com.paypal.sdk.services.NVPCallerServices;


public class CreditCardProcessing {

	public static String PAYMENT_ACTION_ADDBALANCE = "Sale";
	public  int process(String ccNumber,String ccType,Integer date,Double amount)
	{
		int status=1;
		return status;
	}
	
	public String doPaymentProcess(String paymentAction,String amount,String cardType,
			String acct,String expdate,String cvv2, String firstName,
			String lastName, String street, String city, String state, 
			String zip, String countryCode)
	{
		NVPEncoder encoder = new NVPEncoder();
		NVPDecoder decoder = new NVPDecoder();
		
		try
		{

        	NVPCallerServices caller = new NVPCallerServices();
        	APIProfile profile = ProfileFactory.createSignatureAPIProfile();
			/*
			 WARNING: Do not embed plaintext credentials in your application code.
			 Doing so is insecure and against best practices.
			 Your API credentials must be handled securely. Please consider
			 encrypting them for use in any production environment, and ensure
			 that only authorized individuals may view or modify them.
			 */
		// Set up your API credentials, PayPal end point, API operation and version.
			profile.setAPIUsername("balije_1326071327_biz_api1.mobisols.com");
	        profile.setAPIPassword("1326071364");
	        profile.setSignature("AFcWxV21C7fd0v3bYYYRCpSSRl31AkKz7sACMHTAUnLK0kpTIFYwme1K");
	        profile.setEnvironment("sandbox");
	        profile.setSubject("");
	        caller.setAPIProfile(profile);

			encoder.add("VERSION", "51.0");
			encoder.add("METHOD","DoDirectPayment");

		// Add request-specific fields to the request string.
			encoder.add("PAYMENTACTION",paymentAction);
			encoder.add("AMT",amount);
			encoder.add("CREDITCARDTYPE",cardType);		
			encoder.add("ACCT",acct);						
			encoder.add("EXPDATE",expdate);
			encoder.add("CVV2",cvv2);
			encoder.add("FIRSTNAME",firstName);
			encoder.add("LASTNAME",lastName);										
			encoder.add("STREET",street);
			encoder.add("CITY",city);	
			encoder.add("STATE",state);			
			encoder.add("ZIP",zip);	
			encoder.add("COUNTRYCODE",countryCode);

		// Execute the API operation and obtain the response.
			String NVPRequest = encoder.encode();
			String NVPResponse =(String) caller.call(NVPRequest);
			decoder.decode(NVPResponse);
			
		} catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return decoder.get("ACK");
	}
}
