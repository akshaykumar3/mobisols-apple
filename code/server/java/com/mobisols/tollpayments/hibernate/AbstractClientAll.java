package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;

/**
 * AbstractClientAll entity provides the base persistence definition of the
 * ClientAll entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractClientAll extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private Integer clientId;
	private UserAll userAll;
	private String clientName;
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
	private Set<VehicleMovementLogAll> vehicleMovementLogAlls = new HashSet<VehicleMovementLogAll>(
			0);
	private Set<CcTypeAll> ccTypeAlls = new HashSet<CcTypeAll>(0);
	private Set<ComponentAll> componentAlls = new HashSet<ComponentAll>(0);
	private Set<ServicePlanAll> servicePlanAlls = new HashSet<ServicePlanAll>(0);
	private Set<TollOperatorAll> tollOperatorAlls = new HashSet<TollOperatorAll>(
			0);
	private Set<UserVehicleAll> userVehicleAlls = new HashSet<UserVehicleAll>(0);
	private Set<UserServiceAll> userServiceAlls = new HashSet<UserServiceAll>(0);
	private Set<UserTypeAll> userTypeAlls = new HashSet<UserTypeAll>(0);
	private Set<TollPriceAll> tollPriceAlls = new HashSet<TollPriceAll>(0);
	private Set<TollLocationAll> tollLocationAlls = new HashSet<TollLocationAll>(
			0);
	private Set<UserPaymentDetailAll> userPaymentDetailAlls = new HashSet<UserPaymentDetailAll>(
			0);
	private Set<VehicleTypeAll> vehicleTypeAlls = new HashSet<VehicleTypeAll>(0);
	private Set<UserAll> userAlls = new HashSet<UserAll>(0);
	private Set<PaymentTransactionAll> paymentTransactionAlls = new HashSet<PaymentTransactionAll>(
			0);
	private Set<UserBalanceAll> userBalanceAlls = new HashSet<UserBalanceAll>(0);
	private Set<UserBalanceLogAll> userBalanceLogAlls = new HashSet<UserBalanceLogAll>(
			0);
	private Set<VehicleTollUsageAll> vehicleTollUsageAlls = new HashSet<VehicleTollUsageAll>(
			0);
	private Set<OwnerTypeAll> ownerTypeAlls = new HashSet<OwnerTypeAll>(0);
	private Set<VmlTypeAll> vmlTypeAlls = new HashSet<VmlTypeAll>(0);

	// Constructors

	/** default constructor */
	public AbstractClientAll() {
	}

	/** minimal constructor */
	public AbstractClientAll(UserAll userAll, String clientName,
			Timestamp createdOn, Timestamp lastModifiedOn) {
		this.userAll = userAll;
		this.clientName = clientName;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
	}

	/** full constructor */
	public AbstractClientAll(UserAll userAll, String clientName, String udf1,
			String udf2, String udf3, String udf4, String udf5, String flag1,
			String flag2, String flag3, String flag4, String flag5,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Set<VehicleMovementLogAll> vehicleMovementLogAlls,
			Set<CcTypeAll> ccTypeAlls, Set<ComponentAll> componentAlls,
			Set<ServicePlanAll> servicePlanAlls,
			Set<TollOperatorAll> tollOperatorAlls,
			Set<UserVehicleAll> userVehicleAlls,
			Set<UserServiceAll> userServiceAlls, Set<UserTypeAll> userTypeAlls,
			Set<TollPriceAll> tollPriceAlls,
			Set<TollLocationAll> tollLocationAlls,
			Set<UserPaymentDetailAll> userPaymentDetailAlls,
			Set<VehicleTypeAll> vehicleTypeAlls, Set<UserAll> userAlls,
			Set<PaymentTransactionAll> paymentTransactionAlls,
			Set<UserBalanceAll> userBalanceAlls,
			Set<UserBalanceLogAll> userBalanceLogAlls,
			Set<VehicleTollUsageAll> vehicleTollUsageAlls,
			Set<OwnerTypeAll> ownerTypeAlls, Set<VmlTypeAll> vmlTypeAlls) {
		this.userAll = userAll;
		this.clientName = clientName;
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
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
		this.ccTypeAlls = ccTypeAlls;
		this.componentAlls = componentAlls;
		this.servicePlanAlls = servicePlanAlls;
		this.tollOperatorAlls = tollOperatorAlls;
		this.userVehicleAlls = userVehicleAlls;
		this.userServiceAlls = userServiceAlls;
		this.userTypeAlls = userTypeAlls;
		this.tollPriceAlls = tollPriceAlls;
		this.tollLocationAlls = tollLocationAlls;
		this.userPaymentDetailAlls = userPaymentDetailAlls;
		this.vehicleTypeAlls = vehicleTypeAlls;
		this.userAlls = userAlls;
		this.paymentTransactionAlls = paymentTransactionAlls;
		this.userBalanceAlls = userBalanceAlls;
		this.userBalanceLogAlls = userBalanceLogAlls;
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
		this.ownerTypeAlls = ownerTypeAlls;
		this.vmlTypeAlls = vmlTypeAlls;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "client_id", unique = true, nullable = false)
	public Integer getClientId() {
		return this.clientId;
	}

	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "last_modified_by", nullable = false)
	public UserAll getUserAll() {
		return this.userAll;
	}

	public void setUserAll(UserAll userAll) {
		this.userAll = userAll;
	}

	@Column(name = "client_name", nullable = false, length = 45)
	public String getClientName() {
		return this.clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
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

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<VehicleMovementLogAll> getVehicleMovementLogAlls() {
		return this.vehicleMovementLogAlls;
	}

	public void setVehicleMovementLogAlls(
			Set<VehicleMovementLogAll> vehicleMovementLogAlls) {
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<CcTypeAll> getCcTypeAlls() {
		return this.ccTypeAlls;
	}

	public void setCcTypeAlls(Set<CcTypeAll> ccTypeAlls) {
		this.ccTypeAlls = ccTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<ComponentAll> getComponentAlls() {
		return this.componentAlls;
	}

	public void setComponentAlls(Set<ComponentAll> componentAlls) {
		this.componentAlls = componentAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<ServicePlanAll> getServicePlanAlls() {
		return this.servicePlanAlls;
	}

	public void setServicePlanAlls(Set<ServicePlanAll> servicePlanAlls) {
		this.servicePlanAlls = servicePlanAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<TollOperatorAll> getTollOperatorAlls() {
		return this.tollOperatorAlls;
	}

	public void setTollOperatorAlls(Set<TollOperatorAll> tollOperatorAlls) {
		this.tollOperatorAlls = tollOperatorAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<UserVehicleAll> getUserVehicleAlls() {
		return this.userVehicleAlls;
	}

	public void setUserVehicleAlls(Set<UserVehicleAll> userVehicleAlls) {
		this.userVehicleAlls = userVehicleAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<UserServiceAll> getUserServiceAlls() {
		return this.userServiceAlls;
	}

	public void setUserServiceAlls(Set<UserServiceAll> userServiceAlls) {
		this.userServiceAlls = userServiceAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<UserTypeAll> getUserTypeAlls() {
		return this.userTypeAlls;
	}

	public void setUserTypeAlls(Set<UserTypeAll> userTypeAlls) {
		this.userTypeAlls = userTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<TollPriceAll> getTollPriceAlls() {
		return this.tollPriceAlls;
	}

	public void setTollPriceAlls(Set<TollPriceAll> tollPriceAlls) {
		this.tollPriceAlls = tollPriceAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<TollLocationAll> getTollLocationAlls() {
		return this.tollLocationAlls;
	}

	public void setTollLocationAlls(Set<TollLocationAll> tollLocationAlls) {
		this.tollLocationAlls = tollLocationAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<UserPaymentDetailAll> getUserPaymentDetailAlls() {
		return this.userPaymentDetailAlls;
	}

	public void setUserPaymentDetailAlls(
			Set<UserPaymentDetailAll> userPaymentDetailAlls) {
		this.userPaymentDetailAlls = userPaymentDetailAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<VehicleTypeAll> getVehicleTypeAlls() {
		return this.vehicleTypeAlls;
	}

	public void setVehicleTypeAlls(Set<VehicleTypeAll> vehicleTypeAlls) {
		this.vehicleTypeAlls = vehicleTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<UserAll> getUserAlls() {
		return this.userAlls;
	}

	public void setUserAlls(Set<UserAll> userAlls) {
		this.userAlls = userAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<PaymentTransactionAll> getPaymentTransactionAlls() {
		return this.paymentTransactionAlls;
	}

	public void setPaymentTransactionAlls(
			Set<PaymentTransactionAll> paymentTransactionAlls) {
		this.paymentTransactionAlls = paymentTransactionAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<UserBalanceAll> getUserBalanceAlls() {
		return this.userBalanceAlls;
	}

	public void setUserBalanceAlls(Set<UserBalanceAll> userBalanceAlls) {
		this.userBalanceAlls = userBalanceAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<UserBalanceLogAll> getUserBalanceLogAlls() {
		return this.userBalanceLogAlls;
	}

	public void setUserBalanceLogAlls(Set<UserBalanceLogAll> userBalanceLogAlls) {
		this.userBalanceLogAlls = userBalanceLogAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<VehicleTollUsageAll> getVehicleTollUsageAlls() {
		return this.vehicleTollUsageAlls;
	}

	public void setVehicleTollUsageAlls(
			Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<OwnerTypeAll> getOwnerTypeAlls() {
		return this.ownerTypeAlls;
	}

	public void setOwnerTypeAlls(Set<OwnerTypeAll> ownerTypeAlls) {
		this.ownerTypeAlls = ownerTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "clientAll")
	public Set<VmlTypeAll> getVmlTypeAlls() {
		return this.vmlTypeAlls;
	}

	public void setVmlTypeAlls(Set<VmlTypeAll> vmlTypeAlls) {
		this.vmlTypeAlls = vmlTypeAlls;
	}

}