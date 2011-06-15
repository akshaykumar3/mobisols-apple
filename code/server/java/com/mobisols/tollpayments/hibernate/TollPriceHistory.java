package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * TollPriceHistory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_price_history", catalog = "globaltoll")
public class TollPriceHistory extends AbstractTollPriceHistory implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public TollPriceHistory() {
	}

	/** full constructor */
	public TollPriceHistory(TollPriceHistoryId id) {
		super(id);
	}

}
