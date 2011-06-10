/******************************************************************************
 * BalanceInfo
 * 
 * This class represents balance info response sent to the client for 
 * BalanceInfo service. This will contain data for the client to display
 * balance details information to the user.
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

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

@Path("/BalanceInfo")
public class BalanceInfo {
	private float currentBalance;
	private float minBalance;
	private List<BalanceLog> balancelog;
	
	public BalanceInfo(){
		
	}
	
	public BalanceInfo(String user)
	{
		//TODO retrieve the data using hibernate and populate the object
		this.setCurrentBalance((float)20.0000);
		this.setMinBalance((float)0.0000);
		int balancelogCount=1;
		int logid=1;
		for(int i=0;i<balancelogCount;i++){
			balancelog.add(new BalanceLog(logid));
		}
	}
	
	@GET
	@Produces("text/plain")
	public String getBalanceInfo(@QueryParam("username") String user)
	{
		String request="";
		String status="";
		BalanceInfo ac=new BalanceInfo(user);
		JsonConverter json=new JsonConverter();
		return json.getJSON(request, status, ac);
	}
	
	public float getCurrentBalance() {
		return currentBalance;
	}
	public void setCurrentBalance(float currentBalance) {
		this.currentBalance = currentBalance;
	}
	public float getMinBalance() {
		return minBalance;
	}
	public void setMinBalance(float minBalance) {
		this.minBalance = minBalance;
	}
	public List<BalanceLog> getBalancelog() {
		return balancelog;
	}
	public void setBalancelog(List<BalanceLog> balancelog) {
		this.balancelog = balancelog;
	}
}
