package com.mobisols.tollpayments.hibernate;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserVehicleHistory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_vehicle_history", catalog = "globaltoll")
public class UserVehicleHistory extends AbstractUserVehicleHistory implements
		java.io.Serializable {

	// Constructors

	/** default constructor */
	public UserVehicleHistory() {
	}

	/** full constructor */
	public UserVehicleHistory(UserVehicleHistoryId id) {
		super(id);
	}

}
