/******************************************************************************
 * AccountDetails
 * 
 * This class represents complete response sent to the client for 
 * Account service. This will contain data for the client to display all
 * required information to the user.
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

import java.util.LinkedList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;


@Path("/AccountDetails")
public class AccountDetails {
	
	private PaymentDetails paymentDetails;
	private List<VehicleDetails> vehicleDetails;
	private List<TollPayments> tollPayments;
	private BalanceInfo balanceInfo;
	
	public AccountDetails() {
	}

	public AccountDetails(String user) {
		this.paymentDetails=new PaymentDetails(user);
		String vehicleId = "1234";
		int noOfVehicles=1;
		this.vehicleDetails=new LinkedList<VehicleDetails>();
		for(int i=0;i<noOfVehicles;i++)
		{
			this.vehicleDetails.add(new VehicleDetails(user,vehicleId));
		}
		String tollId="1";
		int no_of_tollPayments=1;
		this.tollPayments=new LinkedList<TollPayments>();
		for(int i=0;i<no_of_tollPayments;i++)
		{
			this.tollPayments.add(new TollPayments(user,vehicleId,tollId));
		}
		this.balanceInfo=new BalanceInfo(user);
	}
	
	@GET
	@Produces("text/plain")
	public String getAccountDetails(@QueryParam("username") String user)
	{
		String request="";
		String status="";
		System.out.println("creating account details object");
		AccountDetails ac=new AccountDetails(user);
		System.out.println("created account details object");
		JsonConverter json=new JsonConverter();
		return json.getJSON(request, status, ac);
	}

	public PaymentDetails getPaymentDetails() {
		return paymentDetails;
	}

	public void setPaymentDetails(PaymentDetails paymentDetails) {
		this.paymentDetails = paymentDetails;
	}

	public List<VehicleDetails> getVehicleDetails() {
		return vehicleDetails;
	}

	public void setVehicleDetails(List<VehicleDetails> vehicleDetails) {
		this.vehicleDetails = vehicleDetails;
	}

	public List<TollPayments> getTollPayments() {
		return tollPayments;
	}

	public void setTollPayments(List<TollPayments> tollPayments) {
		this.tollPayments = tollPayments;
	}

	public BalanceInfo getBalanceInfo() {
		return balanceInfo;
	}

	public void setBalanceInfo(BalanceInfo balanceinfo) {
		this.balanceInfo = balanceinfo;
	}
}
