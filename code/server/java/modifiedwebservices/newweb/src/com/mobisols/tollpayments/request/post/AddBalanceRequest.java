package com.mobisols.tollpayments.request.post;
/**
 * The Class AddBalanceRequest.
 */
public class AddBalanceRequest {
	
	/** The amount. */
	private double amount;
	
	/** The description. */
	private String description;
	
	/** The balance id. */
	private int balanceId;
	
	/**
	 * Gets the amount.
	 *
	 * @return the amount
	 */
	public double getAmount() {
		return amount;
	}
	
	/**
	 * Sets the amount.
	 *
	 * @param amount the new amount
	 */
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	/**
	 * Gets the description.
	 *
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	
	/**
	 * Sets the description.
	 *
	 * @param description the new description
	 */
	public void setDescription(String description) {
		this.description = description;
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
