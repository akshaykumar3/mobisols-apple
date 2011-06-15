package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.MappedSuperclass;

/**
 * AbstractUserHistory entity provides the base persistence definition of the
 * UserHistory entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractUserHistory extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private UserHistoryId id;

	// Constructors

	/** default constructor */
	public AbstractUserHistory() {
	}

	/** full constructor */
	public AbstractUserHistory(UserHistoryId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "userHisId", column = @Column(name = "user_his_id", nullable = false)),
			@AttributeOverride(name = "userId", column = @Column(name = "user_id")),
			@AttributeOverride(name = "userName", column = @Column(name = "user_name", nullable = false, length = 320)),
			@AttributeOverride(name = "password", column = @Column(name = "password", length = 40)),
			@AttributeOverride(name = "locale", column = @Column(name = "locale", length = 20)),
			@AttributeOverride(name = "utypeId", column = @Column(name = "utype_id", nullable = false)),
			@AttributeOverride(name = "lastLoginTime", column = @Column(name = "last_login_time", length = 19)),
			@AttributeOverride(name = "isActive", column = @Column(name = "is_active", length = 1)),
			@AttributeOverride(name = "contactNo", column = @Column(name = "contact_no", length = 20)),
			@AttributeOverride(name = "clientId", column = @Column(name = "client_id")),
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
			@AttributeOverride(name = "endDate", column = @Column(name = "end_date", nullable = false, length = 19)) })
	public UserHistoryId getId() {
		return this.id;
	}

	public void setId(UserHistoryId id) {
		this.id = id;
	}

}