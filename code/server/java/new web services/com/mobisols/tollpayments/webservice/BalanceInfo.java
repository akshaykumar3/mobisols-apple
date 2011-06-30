package com.mobisols.tollpayments.webservice;

import java.util.List;


public interface BalanceInfo {
	double currentBalance=(double) 0.0;
	double minBalance=(double) 0.0;
	List<BalanceLog> balancelog=null;
	int balanceId=0;
	
	public String getBalanceInfo(String user);
	public double getCurrentBalance();
	public void setCurrentBalance(double currentBalance);
	public double getMinBalance();
	public void setMinBalance(double minBalance);
	public List<BalanceLog> getBalancelog();
	public void setBalancelog(List<BalanceLog> balancelog);
	public int getBalanceId();

	public void setBalanceId(int balanceId);
}