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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * TollOperatorAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "toll_operator_all", catalog = "globaltoll", uniqueConstraints = {
		@UniqueConstraint(columnNames = "name"),
		@UniqueConstraint(columnNames = "user_id") })
public class TollOperatorAll implements java.io.Serializable {

	// Fields

	private Integer tollOperatorId;
	private ClientAll clientAll;
	private UserAll userAllByLastModifiedBy;
	private UserAll userAllByUserId;
	private String name;
	private String isActive;
	private String website;
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
	private Set<ServicePlanAll> servicePlanAlls = new HashSet<ServicePlanAll>(0);
	private Set<TollLocationAll> tollLocationAlls = new HashSet<TollLocationAll>(
			0);

	// Constructors

	/** default constructor */
	public TollOperatorAll() {
	}

	/** minimal constructor */
	public TollOperatorAll(UserAll userAllByLastModifiedBy, String name,
			String isActive, Timestamp createdOn, Timestamp lastModifiedOn) {
		this.userAllByLastModifiedBy = userAllByLastModifiedBy;
		this.name = name;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
	}

	/** full constructor */
	public TollOperatorAll(ClientAll clientAll,
			UserAll userAllByLastModifiedBy, UserAll userAllByUserId,
			String name, String isActive, String website, String udf1,
			String udf2, String udf3, String udf4, String udf5, String flag1,
			String flag2, String flag3, String flag4, String flag5,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Set<ServicePlanAll> servicePlanAlls,
			Set<TollLocationAll> tollLocationAlls) {
		this.clientAll = clientAll;
		this.userAllByLastModifiedBy = userAllByLastModifiedBy;
		this.userAllByUserId = userAllByUserId;
		this.name = name;
		this.isActive = isActive;
		this.website = website;
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
		this.servicePlanAlls = servicePlanAlls;
		this.tollLocationAlls = tollLocationAlls;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "toll_operator_id", unique = true, nullable = false)
	public Integer getTollOperatorId() {
		return this.tollOperatorId;
	}

	public void setTollOperatorId(Integer tollOperatorId) {
		this.tollOperatorId = tollOperatorId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "client_id")
	public ClientAll getClientAll() {
		return this.clientAll;
	}

	public void setClientAll(ClientAll clientAll) {
		this.clientAll = clientAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "last_modified_by", nullable = false)
	public UserAll getUserAllByLastModifiedBy() {
		return this.userAllByLastModifiedBy;
	}

	public void setUserAllByLastModifiedBy(UserAll userAllByLastModifiedBy) {
		this.userAllByLastModifiedBy = userAllByLastModifiedBy;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "tollOperatorAllByUserId")
	public UserAll getUserAllByUserId() {
		return this.userAllByUserId;
	}

	public void setUserAllByUserId(UserAll userAllByUserId) {
		this.userAllByUserId = userAllByUserId;
	}

	@Column(name = "name", unique = true, nullable = false, length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "is_active", nullable = false, length = 1)
	public String getIsActive() {
		return this.isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	@Column(name = "website", length = 2100)
	public String getWebsite() {
		return this.website;
	}

	public void setWebsite(String website) {
		this.website = website;
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

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "tollOperatorAll")
	public Set<ServicePlanAll> getServicePlanAlls() {
		return this.servicePlanAlls;
	}

	public void setServicePlanAlls(Set<ServicePlanAll> servicePlanAlls) {
		this.servicePlanAlls = servicePlanAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "tollOperatorAll")
	public Set<TollLocationAll> getTollLocationAlls() {
		return this.tollLocationAlls;
	}

	public void setTollLocationAlls(Set<TollLocationAll> tollLocationAlls) {
		this.tollLocationAlls = tollLocationAlls;
	}

}