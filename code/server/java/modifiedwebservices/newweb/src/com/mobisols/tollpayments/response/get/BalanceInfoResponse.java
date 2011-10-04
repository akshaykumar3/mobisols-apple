package com.mobisols.tollpayments.response.get;

import java.util.LinkedList;
import java.util.List;

public class BalanceInfoResponse {
	private double currentBalance;
	private double minBalance;
	private List<BalanceLog> balancelog;
	private int balanceId;
	private List<String> notifications;
	
	public BalanceInfoResponse()
	{
		this.balancelog=new LinkedList();
		this.notifications = new LinkedList<String>();
	}
	public List<String> getNotifications() {
		return notifications;
	}
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	public double getCurrentBalance() {
		return currentBalance;
	}
	public void setCurrentBalance(double currentBalance) {
		this.currentBalance = currentBalance;
	}
	public double getMinBalance() {
		return minBalance;
	}
	public void setMinBalance(double minBalance) {
		this.minBalance = minBalance;
	}
	public List<BalanceLog> getBalancelog() {
		return balancelog;
	}
	public void setBalancelog(List<BalanceLog> balancelog) {
		this.balancelog = balancelog;
	}
	public int getBalanceId() {
		return balanceId;
	}
	public void setBalanceId(int balanceId) {
		this.balanceId = balanceId;
	}
}
