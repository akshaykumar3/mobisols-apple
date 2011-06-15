package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserBalance entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_balance", catalog = "globaltoll")
public class UserBalance extends AbstractUserBalance implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public UserBalance() {
	}

	/** full constructor */
	public UserBalance(UserBalanceId id) {
		super(id);
	}

}
