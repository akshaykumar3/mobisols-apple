package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * TollLocationHistory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_location_history", catalog = "globaltoll")
public class TollLocationHistory implements java.io.Serializable {

	// Fields

	private TollLocationHistoryId id;

	// Constructors

	/** default constructor */
	public TollLocationHistory() {
	}

	/** full constructor */
	public TollLocationHistory(TollLocationHistoryId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "tlhId", column = @Column(name = "tlh_id", nullable = false)),
			@AttributeOverride(name = "tollLocationId", column = @Column(name = "toll_location_id")),
			@AttributeOverride(name = "tollOperatorId", column = @Column(name = "toll_operator_id", nullable = false)),
			@AttributeOverride(name = "geometry", column = @Column(name = "geometry", nullable = false)),
			@AttributeOverride(name = "isCovered", column = @Column(name = "is_covered", length = 1)),
			@AttributeOverride(name = "isCashOnly", column = @Column(name = "is_cash_only", length = 1)),
			@AttributeOverride(name = "address1", column = @Column(name = "address1", length = 45)),
			@AttributeOverride(name = "address2", column = @Column(name = "address2", length = 45)),
			@AttributeOverride(name = "city", column = @Column(name = "city", length = 50)),
			@AttributeOverride(name = "state", column = @Column(name = "state", length = 50)),
			@AttributeOverride(name = "country", column = @Column(name = "country", length = 70)),
			@AttributeOverride(name = "zip", column = @Column(name = "zip", length = 6)),
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
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", length = 19)),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", length = 19)),
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by")),
			@AttributeOverride(name = "startDate", column = @Column(name = "start_date", nullable = false, length = 19)),
			@AttributeOverride(name = "endDate", column = @Column(name = "end_date", nullable = false, length = 19)),
			@AttributeOverride(name = "action", column = @Column(name = "action", nullable = false, length = 20)),
			@AttributeOverride(name = "clientId", column = @Column(name = "client_id")) })
	public TollLocationHistoryId getId() {
		return this.id;
	}

	public void setId(TollLocationHistoryId id) {
		this.id = id;
	}

}