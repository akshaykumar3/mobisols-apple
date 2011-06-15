package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * ComponentVersion entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "component_version", catalog = "globaltoll")
public class ComponentVersion extends AbstractComponentVersion implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public ComponentVersion() {
	}

	/** full constructor */
	public ComponentVersion(ComponentVersionId id) {
		super(id);
	}

}
