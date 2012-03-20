package com.mobisols.tollpayments.response.get;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

/**
 * The Class BalanceInfoResponse.
 */
public class BalanceInfoResponse {
	
	/** The current balance. */
	private double currentBalance;
	
	/** The min balance. */
	private double minBalance;
	
	/** The balancelog. */
	private List<BalanceLog> balancelog;
	
	/** The balance id. */
	private int balanceId;
	
	/** The notifications. */
	private List<String> notifications;
	
	/** The commands. */
	private HashMap<String, String> commands;
	
	/**
	 * Instantiates a new balance info response.
	 */
	public BalanceInfoResponse()
	{
		this.balancelog=new LinkedList();
		this.notifications = new LinkedList<String>();
		this.commands = new HashMap<String, String>();
	}
	
	/**
	 * Gets the commands.
	 *
	 * @return the commands
	 */
	public HashMap<String, String> getCommands() {
		return commands;
	}

	/**
	 * Sets the commands.
	 *
	 * @param commands the new commands
	 */
	public void setCommands(HashMap<String,String> commands) {
		this.commands = commands;
	}

	/**
	 * Gets the notifications.
	 *
	 * @return the notifications
	 */
	public List<String> getNotifications() {
		return notifications;
	}
	
	/**
	 * Sets the notifications.
	 *
	 * @param notifications the new notifications
	 */
	public void setNotifications(List<String> notifications) {
		this.notifications = notifications;
	}
	
	/**
	 * Gets the current balance.
	 *
	 * @return the current balance
	 */
	public double getCurrentBalance() {
		return currentBalance;
	}
	
	/**
	 * Sets the current balance.
	 *
	 * @param currentBalance the new current balance
	 */
	public void setCurrentBalance(double currentBalance) {
		this.currentBalance = currentBalance;
	}
	
	/**
	 * Gets the min balance.
	 *
	 * @return the min balance
	 */
	public double getMinBalance() {
		return minBalance;
	}
	
	/**
	 * Sets the min balance.
	 *
	 * @param minBalance the new min balance
	 */
	public void setMinBalance(double minBalance) {
		this.minBalance = minBalance;
	}
	
	/**
	 * Gets the balancelog.
	 *
	 * @return the balancelog
	 */
	public List<BalanceLog> getBalancelog() {
		return balancelog;
	}
	
	/**
	 * Sets the balancelog.
	 *
	 * @param balancelog the new balancelog
	 */
	public void setBalancelog(List<BalanceLog> balancelog) {
		this.balancelog = balancelog;
	}
	
	/**
	 * Gets the balance id.
	 *
	 * @return the balance id
	 */
	public int getBalanceId() {
		return balanceId;
	}
	
	/**
	 * Sets the balance id.
	 *
	 * @param balanceId the new balance id
	 */
	public void setBalanceId(int balanceId) {
		this.balanceId = balanceId;
	}
}
