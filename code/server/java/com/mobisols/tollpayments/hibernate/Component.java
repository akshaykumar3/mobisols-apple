package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Component entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "component", catalog = "globaltoll")
public class Component extends AbstractComponent implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public Component() {
	}

	/** full constructor */
	public Component(ComponentId id) {
		super(id);
	}

}
