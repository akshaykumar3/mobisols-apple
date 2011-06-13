package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserBasic entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_basic", catalog = "globaltoll")
public class UserBasic implements java.io.Serializable {

	// Fields

	private UserBasicId id;

	// Constructors

	/** default constructor */
	public UserBasic() {
	}

	/** full constructor */
	public UserBasic(UserBasicId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "userId", column = @Column(name = "user_id", nullable = false)),
			@AttributeOverride(name = "clientId", column = @Column(name = "client_id", nullable = false)),
			@AttributeOverride(name = "utypeId", column = @Column(name = "utype_id", nullable = false)),
			@AttributeOverride(name = "userName", column = @Column(name = "user_name", nullable = false, length = 320)),
			@AttributeOverride(name = "password", column = @Column(name = "password", nullable = false, length = 40)),
			@AttributeOverride(name = "locale", column = @Column(name = "locale", length = 20)),
			@AttributeOverride(name = "isActive", column = @Column(name = "is_active", nullable = false, length = 1)),
			@AttributeOverride(name = "contactNo", column = @Column(name = "contact_no", length = 20)),
			@AttributeOverride(name = "lastLoginTime", column = @Column(name = "last_login_time", length = 19)),
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
	public UserBasicId getId() {
		return this.id;
	}

	public void setId(UserBasicId id) {
		this.id = id;
	}

}