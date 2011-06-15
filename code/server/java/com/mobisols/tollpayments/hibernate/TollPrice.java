package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * TollPrice entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_price", catalog = "globaltoll")
public class TollPrice extends AbstractTollPrice implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public TollPrice() {
	}

	/** full constructor */
	public TollPrice(TollPriceId id) {
		super(id);
	}

}
