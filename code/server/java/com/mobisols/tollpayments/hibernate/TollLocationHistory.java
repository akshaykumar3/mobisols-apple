package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * TollLocationHistory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_location_history", catalog = "globaltoll")
public class TollLocationHistory extends AbstractTollLocationHistory implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public TollLocationHistory() {
	}

	/** full constructor */
	public TollLocationHistory(TollLocationHistoryId id) {
		super(id);
	}

}
