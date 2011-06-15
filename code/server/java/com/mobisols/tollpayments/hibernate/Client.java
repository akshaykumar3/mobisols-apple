package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Client entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "client", catalog = "globaltoll")
public class Client extends AbstractClient implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Client() {
	}

	/** full constructor */
	public Client(ClientId id) {
		super(id);
	}

}
