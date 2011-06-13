package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * TollOperator entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_operator", catalog = "globaltoll")
public class TollOperator implements java.io.Serializable {

	// Fields

	private TollOperatorId id;

	// Constructors

	/** default constructor */
	public TollOperator() {
	}

	/** full constructor */
	public TollOperator(TollOperatorId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "tollOperatorId", column = @Column(name = "toll_operator_id", nullable = false)),
			@AttributeOverride(name = "userId", column = @Column(name = "user_id")),
			@AttributeOverride(name = "name", column = @Column(name = "name", nullable = false, length = 100)),
			@AttributeOverride(name = "isActive", column = @Column(name = "is_active", nullable = false, length = 45)),
			@AttributeOverride(name = "website", column = @Column(name = "website", length = 2100)),
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
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", nullable = false, length = 19)),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", nullable = false, length = 19)),
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by", nullable = false)) })
	public TollOperatorId getId() {
		return this.id;
	}

	public void setId(TollOperatorId id) {
		this.id = id;
	}

}