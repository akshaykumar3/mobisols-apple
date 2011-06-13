package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserBalanceLog entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_balance_log", catalog = "globaltoll")
public class UserBalanceLog implements java.io.Serializable {

	// Fields

	private UserBalanceLogId id;

	// Constructors

	/** default constructor */
	public UserBalanceLog() {
	}

	/** full constructor */
	public UserBalanceLog(UserBalanceLogId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "ublogId", column = @Column(name = "ublog_id", nullable = false)),
			@AttributeOverride(name = "ubalId", column = @Column(name = "ubal_id", nullable = false)),
			@AttributeOverride(name = "delta", column = @Column(name = "delta", nullable = false, scale = 4)),
			@AttributeOverride(name = "timestamp", column = @Column(name = "timestamp", nullable = false, length = 19)),
			@AttributeOverride(name = "action", column = @Column(name = "action", nullable = false, length = 200)),
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
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by")),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", nullable = false, length = 19)),
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", nullable = false, length = 19)) })
	public UserBalanceLogId getId() {
		return this.id;
	}

	public void setId(UserBalanceLogId id) {
		this.id = id;
	}

}