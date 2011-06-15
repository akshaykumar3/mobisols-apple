package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

/**
 * AbstractConfigurationAll entity provides the base persistence definition of
 * the ConfigurationAll entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractConfigurationAll extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private Integer configId;
	private UserAll userAll;
	private ComponentVersionAll componentVersionAll;
	private String key;
	private String value;
	private String udf1;
	private String udf2;
	private String udf3;
	private String udf4;
	private String udf5;
	private String flag1;
	private String flag2;
	private String flag3;
	private String flag4;
	private String flag5;
	private Timestamp createdOn;
	private Timestamp lastModifiedOn;

	// Constructors

	/** default constructor */
	public AbstractConfigurationAll() {
	}

	/** minimal constructor */
	public AbstractConfigurationAll(Integer configId, UserAll userAll,
			Timestamp createdOn, Timestamp lastModifiedOn) {
		this.configId = configId;
		this.userAll = userAll;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
	}

	/** full constructor */
	public AbstractConfigurationAll(Integer configId, UserAll userAll,
			ComponentVersionAll componentVersionAll, String key, String value,
			String udf1, String udf2, String udf3, String udf4, String udf5,
			String flag1, String flag2, String flag3, String flag4,
			String flag5, Timestamp createdOn, Timestamp lastModifiedOn) {
		this.configId = configId;
		this.userAll = userAll;
		this.componentVersionAll = componentVersionAll;
		this.key = key;
		this.value = value;
		this.udf1 = udf1;
		this.udf2 = udf2;
		this.udf3 = udf3;
		this.udf4 = udf4;
		this.udf5 = udf5;
		this.flag1 = flag1;
		this.flag2 = flag2;
		this.flag3 = flag3;
		this.flag4 = flag4;
		this.flag5 = flag5;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
	}

	// Property accessors
	@Id
	@Column(name = "config_id", unique = true, nullable = false)
	public Integer getConfigId() {
		return this.configId;
	}

	public void setConfigId(Integer configId) {
		this.configId = configId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "last_modified_by", nullable = false)
	public UserAll getUserAll() {
		return this.userAll;
	}

	public void setUserAll(UserAll userAll) {
		this.userAll = userAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "comp_version_id")
	public ComponentVersionAll getComponentVersionAll() {
		return this.componentVersionAll;
	}

	public void setComponentVersionAll(ComponentVersionAll componentVersionAll) {
		this.componentVersionAll = componentVersionAll;
	}

	@Column(name = "key", length = 45)
	public String getKey() {
		return this.key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	@Column(name = "value", length = 1000)
	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Column(name = "udf1", length = 1000)
	public String getUdf1() {
		return this.udf1;
	}

	public void setUdf1(String udf1) {
		this.udf1 = udf1;
	}

	@Column(name = "udf2", length = 1000)
	public String getUdf2() {
		return this.udf2;
	}

	public void setUdf2(String udf2) {
		this.udf2 = udf2;
	}

	@Column(name = "udf3", length = 1000)
	public String getUdf3() {
		return this.udf3;
	}

	public void setUdf3(String udf3) {
		this.udf3 = udf3;
	}

	@Column(name = "udf4", length = 1000)
	public String getUdf4() {
		return this.udf4;
	}

	public void setUdf4(String udf4) {
		this.udf4 = udf4;
	}

	@Column(name = "udf5", length = 1000)
	public String getUdf5() {
		return this.udf5;
	}

	public void setUdf5(String udf5) {
		this.udf5 = udf5;
	}

	@Column(name = "flag1", length = 1)
	public String getFlag1() {
		return this.flag1;
	}

	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}

	@Column(name = "flag2", length = 1)
	public String getFlag2() {
		return this.flag2;
	}

	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}

	@Column(name = "flag3", length = 1)
	public String getFlag3() {
		return this.flag3;
	}

	public void setFlag3(String flag3) {
		this.flag3 = flag3;
	}

	@Column(name = "flag4", length = 1)
	public String getFlag4() {
		return this.flag4;
	}

	public void setFlag4(String flag4) {
		this.flag4 = flag4;
	}

	@Column(name = "flag5", length = 1)
	public String getFlag5() {
		return this.flag5;
	}

	public void setFlag5(String flag5) {
		this.flag5 = flag5;
	}

	@Column(name = "created_on", nullable = false, length = 19)
	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	@Column(name = "last_modified_on", nullable = false, length = 19)
	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

}