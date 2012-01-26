package com.mobisols.tollpayments.paymentprocess;

// TODO: Auto-generated Javadoc
/**
 * The Class PaymentGateway.
 */
public class PaymentGateway {

	/** The credit card processing. */
	private CreditCardProcessing creditCardProcessing;
	
	/** The bank processing. */
	private BankProcessing bankProcessing;
	
	/**
	 * Instantiates a new payment gateway.
	 */
	public PaymentGateway(){
		this.creditCardProcessing = new CreditCardProcessing();
		this.bankProcessing = new BankProcessing();
	}
	
	/**
	 * Gets the credit card processing.
	 *
	 * @return the credit card processing
	 */
	public CreditCardProcessing getCreditCardProcessing() {
		return creditCardProcessing;
	}
	
	/**
	 * Sets the credit card processing.
	 *
	 * @param creditCardProcessing the new credit card processing
	 */
	public void setCreditCardProcessing(CreditCardProcessing creditCardProcessing) {
		this.creditCardProcessing = creditCardProcessing;
	}
	
	/**
	 * Gets the bank processing.
	 *
	 * @return the bank processing
	 */
	public BankProcessing getBankProcessing() {
		return bankProcessing;
	}
	
	/**
	 * Sets the bank processing.
	 *
	 * @param bankProcessing the new bank processing
	 */
	public void setBankProcessing(BankProcessing bankProcessing) {
		this.bankProcessing = bankProcessing;
	}
}
