package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserType entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_type", catalog = "globaltoll")
public class UserType extends AbstractUserType implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public UserType() {
	}

	/** full constructor */
	public UserType(UserTypeId id) {
		super(id);
	}

}
