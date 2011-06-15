package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * PaymentTransaction entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "payment_transaction", catalog = "globaltoll")
public class PaymentTransaction extends AbstractPaymentTransaction implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public PaymentTransaction() {
	}

	/** full constructor */
	public PaymentTransaction(PaymentTransactionId id) {
		super(id);
	}

}
