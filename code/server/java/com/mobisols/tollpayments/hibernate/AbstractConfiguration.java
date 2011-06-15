package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.MappedSuperclass;

/**
 * AbstractConfiguration entity provides the base persistence definition of the
 * Configuration entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractConfiguration extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private ConfigurationId id;

	// Constructors

	/** default constructor */
	public AbstractConfiguration() {
	}

	/** full constructor */
	public AbstractConfiguration(ConfigurationId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "configId", column = @Column(name = "config_id", nullable = false)),
			@AttributeOverride(name = "compVersionId", column = @Column(name = "comp_version_id")),
			@AttributeOverride(name = "key", column = @Column(name = "key", length = 45)),
			@AttributeOverride(name = "value", column = @Column(name = "value", length = 1000)),
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
	public ConfigurationId getId() {
		return this.id;
	}

	public void setId(ConfigurationId id) {
		this.id = id;
	}

}