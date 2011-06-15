package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * CcType entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "cc_type", catalog = "globaltoll")
public class CcType extends AbstractCcType implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public CcType() {
	}

	/** full constructor */
	public CcType(CcTypeId id) {
		super(id);
	}

}
