package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserBalanceLog entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_balance_log", catalog = "globaltoll")
public class UserBalanceLog extends AbstractUserBalanceLog implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public UserBalanceLog() {
	}

	/** full constructor */
	public UserBalanceLog(UserBalanceLogId id) {
		super(id);
	}

}
