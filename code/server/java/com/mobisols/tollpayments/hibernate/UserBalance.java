package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserBalance entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_balance", catalog = "globaltoll")
public class UserBalance implements java.io.Serializable {

	// Fields

	private UserBalanceId id;

	// Constructors

	/** default constructor */
	public UserBalance() {
	}

	/** full constructor */
	public UserBalance(UserBalanceId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "ubalId", column = @Column(name = "ubal_id", nullable = false)),
			@AttributeOverride(name = "userId", column = @Column(name = "user_id")),
			@AttributeOverride(name = "balance", column = @Column(name = "balance", nullable = false, scale = 4)),
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
	public UserBalanceId getId() {
		return this.id;
	}

	public void setId(UserBalanceId id) {
		this.id = id;
	}

}