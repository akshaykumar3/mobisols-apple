package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserService entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_service", catalog = "globaltoll")
public class UserService extends AbstractUserService implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public UserService() {
	}

	/** full constructor */
	public UserService(UserServiceId id) {
		super(id);
	}

}
