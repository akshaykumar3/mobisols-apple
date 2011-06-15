package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserPaymentDetail entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_payment_detail", catalog = "globaltoll")
public class UserPaymentDetail extends AbstractUserPaymentDetail implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public UserPaymentDetail() {
	}

	/** full constructor */
	public UserPaymentDetail(UserPaymentDetailId id) {
		super(id);
	}

}
