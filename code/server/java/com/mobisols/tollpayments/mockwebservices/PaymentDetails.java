
/******************************************************************************
 *PaymentDetails
 * 
 * This class represents response sent to the client for 
 * Payment Details. This will contain data for the client to display all
 * payment details information to the user.
 * ****************************************************************************
 * Change list
 * ============================================================================
 * Author					Date					Summary
 * ----------------------------------------------------------------------------
 * Raghukumar		07-JUNE-2011				   Mockwebservice
 * 
 *
 */

package com.mobisols.tollpayments.mockwebservices;

import java.util.Date;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

@Path("/PaymentDetails")
public class PaymentDetails {
	private String cardNumber;
	private Date expDate;
	private String cardType;
	private String bankRouting;
	private String bankAccount;
	
	public PaymentDetails(String user) {
		//TODO code to access database using hibernate
		this.setCardNumber("xxxxxxxxxxx1234");
		this.setExpDate(new Date());
		this.setCardType("mastero");
		this.setBankRouting("");
		this.setBankAccount("1234567890");
	}
	
	public PaymentDetails() {
	}


	@POST
	@Produces("text/plain")
	public String postPaymentDetails(@QueryParam("json") String json,@QueryParam("username") String user)
	{
		JsonConverter c=new JsonConverter();
		PaymentDetails pd=(PaymentDetails)c.getObject(json, "com.mobisols.tollpayments.mockwebservices.PaymentDetails");
		//TODO update data using Hibernate
		GeneralResponse response =new GeneralResponse();
		response.setDescription("your account details have been updated successfully");
		//TODO update general response details
		String status="";
		String request="";
		return c.getJSON(request, status, response);
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public Date getExpDate() {
		return expDate;
	}
	public void setExpDate(Date expDate) {
		this.expDate = expDate;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getBankRouting() {
		return bankRouting;
	}
	public void setBankRouting(String bankRouting) {
		this.bankRouting = bankRouting;
	}
	public String getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}
	
}
