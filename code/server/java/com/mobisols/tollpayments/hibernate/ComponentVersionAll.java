package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Version;

/**
 * ComponentVersionAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "component_version_all", catalog = "globaltoll")
public class ComponentVersionAll implements java.io.Serializable {

	// Fields

	private Integer compVersionId;
	private String version;
	private ComponentAll componentAll;
	private UserBasicAll userBasicAll;
	private String description;
	private String listOfChanges;
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
	private Set<ConfigurationAll> configurationAlls = new HashSet<ConfigurationAll>(
			0);

	// Constructors

	/** default constructor */
	public ComponentVersionAll() {
	}

	/** minimal constructor */
	public ComponentVersionAll(UserBasicAll userBasicAll, Timestamp createdOn,
			Timestamp lastModifiedOn) {
		this.userBasicAll = userBasicAll;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
	}

	/** full constructor */
	public ComponentVersionAll(ComponentAll componentAll,
			UserBasicAll userBasicAll, String description,
			String listOfChanges, String udf1, String udf2, String udf3,
			String udf4, String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Timestamp createdOn,
			Timestamp lastModifiedOn, Set<ConfigurationAll> configurationAlls) {
		this.componentAll = componentAll;
		this.userBasicAll = userBasicAll;
		this.description = description;
		this.listOfChanges = listOfChanges;
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
		this.configurationAlls = configurationAlls;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "comp_version_id", unique = true, nullable = false)
	public Integer getCompVersionId() {
		return this.compVersionId;
	}

	public void setCompVersionId(Integer compVersionId) {
		this.compVersionId = compVersionId;
	}

	@Version
	@Column(name = "version", length = 20)
	public String getVersion() {
		return this.version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "component_id")
	public ComponentAll getComponentAll() {
		return this.componentAll;
	}

	public void setComponentAll(ComponentAll componentAll) {
		this.componentAll = componentAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "last_modified_by", nullable = false)
	public UserBasicAll getUserBasicAll() {
		return this.userBasicAll;
	}

	public void setUserBasicAll(UserBasicAll userBasicAll) {
		this.userBasicAll = userBasicAll;
	}

	@Column(name = "description", length = 45)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "list_of_changes", length = 4000)
	public String getListOfChanges() {
		return this.listOfChanges;
	}

	public void setListOfChanges(String listOfChanges) {
		this.listOfChanges = listOfChanges;
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

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "componentVersionAll")
	public Set<ConfigurationAll> getConfigurationAlls() {
		return this.configurationAlls;
	}

	public void setConfigurationAlls(Set<ConfigurationAll> configurationAlls) {
		this.configurationAlls = configurationAlls;
	}

}