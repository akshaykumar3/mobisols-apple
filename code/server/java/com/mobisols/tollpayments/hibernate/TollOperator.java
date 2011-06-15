package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * TollOperator entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_operator", catalog = "globaltoll")
public class TollOperator extends AbstractTollOperator implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public TollOperator() {
	}

	/** full constructor */
	public TollOperator(TollOperatorId id) {
		super(id);
	}

}
