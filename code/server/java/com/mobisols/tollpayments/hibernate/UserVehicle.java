package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserVehicle entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_vehicle", catalog = "globaltoll")
public class UserVehicle extends AbstractUserVehicle implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public UserVehicle() {
	}

	/** full constructor */
	public UserVehicle(UserVehicleId id) {
		super(id);
	}

}
