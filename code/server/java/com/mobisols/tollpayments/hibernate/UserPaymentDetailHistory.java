package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserPaymentDetailHistory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_payment_detail_history", catalog = "globaltoll")
public class UserPaymentDetailHistory extends AbstractUserPaymentDetailHistory
		implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public UserPaymentDetailHistory() {
	}

	/** full constructor */
	public UserPaymentDetailHistory(UserPaymentDetailHistoryId id) {
		super(id);
	}

}
