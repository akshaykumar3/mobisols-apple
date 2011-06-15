package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserHistory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_history", catalog = "globaltoll")
public class UserHistory extends AbstractUserHistory implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public UserHistory() {
	}

	/** full constructor */
	public UserHistory(UserHistoryId id) {
		super(id);
	}

}
