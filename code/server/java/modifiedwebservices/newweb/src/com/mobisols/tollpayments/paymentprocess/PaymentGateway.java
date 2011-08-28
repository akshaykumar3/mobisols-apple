package com.mobisols.tollpayments.paymentprocess;

public class PaymentGateway {

	private CreditCardProcessing creditCardProcessing;
	private BankProcessing bankProcessing;
	
	public CreditCardProcessing getCreditCardProcessing() {
		return creditCardProcessing;
	}
	public void setCreditCardProcessing(CreditCardProcessing creditCardProcessing) {
		this.creditCardProcessing = creditCardProcessing;
	}
	public BankProcessing getBankProcessing() {
		return bankProcessing;
	}
	public void setBankProcessing(BankProcessing bankProcessing) {
		this.bankProcessing = bankProcessing;
	}
}
