package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * VehicleTollUsage entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "vehicle_toll_usage", catalog = "globaltoll")
public class VehicleTollUsage extends AbstractVehicleTollUsage implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public VehicleTollUsage() {
	}

	/** full constructor */
	public VehicleTollUsage(VehicleTollUsageId id) {
		super(id);
	}

}
