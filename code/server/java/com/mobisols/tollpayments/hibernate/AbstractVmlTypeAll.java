package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;

/**
 * AbstractVmlTypeAll entity provides the base persistence definition of the
 * VmlTypeAll entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractVmlTypeAll extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private Integer vmlTypeId;
	private ClientAll clientAll;
	private UserAll userAll;
	private String name;
	private String description;
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
	private Timestamp lastModifiedOn;
	private Timestamp createdOn;
	private Set<VehicleMovementLogAll> vehicleMovementLogAlls = new HashSet<VehicleMovementLogAll>(
			0);

	// Constructors

	/** default constructor */
	public AbstractVmlTypeAll() {
	}

	/** minimal constructor */
	public AbstractVmlTypeAll(Integer vmlTypeId, UserAll userAll, String name,
			Timestamp lastModifiedOn, Timestamp createdOn) {
		this.vmlTypeId = vmlTypeId;
		this.userAll = userAll;
		this.name = name;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/** full constructor */
	public AbstractVmlTypeAll(Integer vmlTypeId, ClientAll clientAll,
			UserAll userAll, String name, String description, String udf1,
			String udf2, String udf3, String udf4, String udf5, String flag1,
			String flag2, String flag3, String flag4, String flag5,
			Timestamp lastModifiedOn, Timestamp createdOn,
			Set<VehicleMovementLogAll> vehicleMovementLogAlls) {
		this.vmlTypeId = vmlTypeId;
		this.clientAll = clientAll;
		this.userAll = userAll;
		this.name = name;
		this.description = description;
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
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
	}

	// Property accessors
	@Id
	@Column(name = "vml_type_id", unique = true, nullable = false)
	public Integer getVmlTypeId() {
		return this.vmlTypeId;
	}

	public void setVmlTypeId(Integer vmlTypeId) {
		this.vmlTypeId = vmlTypeId;
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
	public UserAll getUserAll() {
		return this.userAll;
	}

	public void setUserAll(UserAll userAll) {
		this.userAll = userAll;
	}

	@Column(name = "name", nullable = false, length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "description", length = 60)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	@Column(name = "last_modified_on", nullable = false, length = 19)
	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	@Column(name = "created_on", nullable = false, length = 19)
	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "vmlTypeAll")
	public Set<VehicleMovementLogAll> getVehicleMovementLogAlls() {
		return this.vehicleMovementLogAlls;
	}

	public void setVehicleMovementLogAlls(
			Set<VehicleMovementLogAll> vehicleMovementLogAlls) {
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
	}

}