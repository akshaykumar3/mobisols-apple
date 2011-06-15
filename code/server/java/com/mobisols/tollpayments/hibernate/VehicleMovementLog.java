package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * VehicleMovementLog entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "vehicle_movement_log", catalog = "globaltoll")
public class VehicleMovementLog extends AbstractVehicleMovementLog implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public VehicleMovementLog() {
	}

	/** full constructor */
	public VehicleMovementLog(VehicleMovementLogId id) {
		super(id);
	}

}
