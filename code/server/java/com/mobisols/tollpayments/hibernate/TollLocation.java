package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * TollLocation entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_location", catalog = "globaltoll")
public class TollLocation extends AbstractTollLocation implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public TollLocation() {
	}

	/** full constructor */
	public TollLocation(TollLocationId id) {
		super(id);
	}

}
