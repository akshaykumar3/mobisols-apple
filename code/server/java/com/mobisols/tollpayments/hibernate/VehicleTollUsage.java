package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * VehicleTollUsage entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "vehicle_toll_usage", catalog = "globaltoll")
public class VehicleTollUsage implements java.io.Serializable {

	// Fields

	private VehicleTollUsageId id;

	// Constructors

	/** default constructor */
	public VehicleTollUsage() {
	}

	/** full constructor */
	public VehicleTollUsage(VehicleTollUsageId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "vtuId", column = @Column(name = "vtu_id", nullable = false)),
			@AttributeOverride(name = "uvhId", column = @Column(name = "uvh_id", nullable = false)),
			@AttributeOverride(name = "tollLocId", column = @Column(name = "toll_loc_id", nullable = false)),
			@AttributeOverride(name = "tphId", column = @Column(name = "tph_id")),
			@AttributeOverride(name = "timestamp", column = @Column(name = "timestamp", nullable = false, length = 19)),
			@AttributeOverride(name = "vmlId", column = @Column(name = "vml_id", nullable = false)),
			@AttributeOverride(name = "ptranId", column = @Column(name = "ptran_id")),
			@AttributeOverride(name = "udf1", column = @Column(name = "udf1", length = 1000)),
			@AttributeOverride(name = "udf2", column = @Column(name = "udf2", length = 1000)),
			@AttributeOverride(name = "udf3", column = @Column(name = "udf3", length = 1000)),
			@AttributeOverride(name = "udf4", column = @Column(name = "udf4", length = 1000)),
			@AttributeOverride(name = "udf5", column = @Column(name = "udf5", length = 1000)),
			@AttributeOverride(name = "flag1", column = @Column(name = "flag1", length = 1)),
			@AttributeOverride(name = "flag2", column = @Column(name = "flag2", length = 1)),
			@AttributeOverride(name = "flag3", column = @Column(name = "flag3", length = 1)),
			@AttributeOverride(name = "flag4", column = @Column(name = "flag4", length = 1)),
			@AttributeOverride(name = "flag5", column = @Column(name = "flag5", length = 1)),
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by", nullable = false)),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", nullable = false, length = 19)),
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", nullable = false, length = 19)) })
	public VehicleTollUsageId getId() {
		return this.id;
	}

	public void setId(VehicleTollUsageId id) {
		this.id = id;
	}

}