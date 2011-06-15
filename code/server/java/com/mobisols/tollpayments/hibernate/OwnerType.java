package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * OwnerType entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "owner_type", catalog = "globaltoll")
public class OwnerType extends AbstractOwnerType implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public OwnerType() {
	}

	/** full constructor */
	public OwnerType(OwnerTypeId id) {
		super(id);
	}

}
