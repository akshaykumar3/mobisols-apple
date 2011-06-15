package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Configuration entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "configuration", catalog = "globaltoll")
public class Configuration extends AbstractConfiguration implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Configuration() {
	}

	/** full constructor */
	public Configuration(ConfigurationId id) {
		super(id);
	}

}
