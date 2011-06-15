package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * VmlType entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "vml_type", catalog = "globaltoll")
public class VmlType extends AbstractVmlType implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public VmlType() {
	}

	/** full constructor */
	public VmlType(VmlTypeId id) {
		super(id);
	}

}
