package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * TollPriceHistory entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_price_history", catalog = "globaltoll")
public class TollPriceHistory implements java.io.Serializable {

	// Fields

	private TollPriceHistoryId id;

	// Constructors

	/** default constructor */
	public TollPriceHistory() {
	}

	/** full constructor */
	public TollPriceHistory(TollPriceHistoryId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "tphId", column = @Column(name = "tph_id", nullable = false)),
			@AttributeOverride(name = "tollPriceId", column = @Column(name = "toll_price_id", nullable = false)),
			@AttributeOverride(name = "tollLocationId", column = @Column(name = "toll_location_id", nullable = false)),
			@AttributeOverride(name = "vehicleTypeId", column = @Column(name = "vehicle_type_id", nullable = false)),
			@AttributeOverride(name = "direction", column = @Column(name = "direction", length = 25)),
			@AttributeOverride(name = "costPrice", column = @Column(name = "cost_price", nullable = false, scale = 4)),
			@AttributeOverride(name = "sellingPrice", column = @Column(name = "selling_price", scale = 4)),
			@AttributeOverride(name = "action", column = @Column(name = "action", nullable = false, length = 20)),
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
			@AttributeOverride(name = "clientId", column = @Column(name = "client_id")) })
	public TollPriceHistoryId getId() {
		return this.id;
	}

	public void setId(TollPriceHistoryId id) {
		this.id = id;
	}

}