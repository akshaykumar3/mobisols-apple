package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * VehicleType entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "vehicle_type", catalog = "globaltoll")
public class VehicleType extends AbstractVehicleType implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public VehicleType() {
	}

	/** full constructor */
	public VehicleType(VehicleTypeId id) {
		super(id);
	}

}
