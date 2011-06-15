package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.MappedSuperclass;

/**
 * AbstractTollLocation entity provides the base persistence definition of the
 * TollLocation entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractTollLocation extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private TollLocationId id;

	// Constructors

	/** default constructor */
	public AbstractTollLocation() {
	}

	/** full constructor */
	public AbstractTollLocation(TollLocationId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "tollLocationId", column = @Column(name = "toll_location_id", nullable = false)),
			@AttributeOverride(name = "tollOperatorId", column = @Column(name = "toll_operator_id", nullable = false)),
			@AttributeOverride(name = "geometry", column = @Column(name = "geometry", nullable = false)),
			@AttributeOverride(name = "isCovered", column = @Column(name = "is_covered", nullable = false, length = 1)),
			@AttributeOverride(name = "isCashOnly", column = @Column(name = "is_cash_only", nullable = false, length = 1)),
			@AttributeOverride(name = "address1", column = @Column(name = "address1", length = 45)),
			@AttributeOverride(name = "address2", column = @Column(name = "address2", length = 45)),
			@AttributeOverride(name = "city", column = @Column(name = "city", length = 50)),
			@AttributeOverride(name = "state", column = @Column(name = "state", length = 50)),
			@AttributeOverride(name = "country", column = @Column(name = "country", length = 70)),
			@AttributeOverride(name = "zip", column = @Column(name = "zip", length = 30)),
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
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", nullable = false, length = 19)),
			@AttributeOverride(name = "clientId", column = @Column(name = "client_id")) })
	public TollLocationId getId() {
		return this.id;
	}

	public void setId(TollLocationId id) {
		this.id = id;
	}

}