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
import javax.persistence.OneToOne;

/**
 * AbstractUserAll entity provides the base persistence definition of the
 * UserAll entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractUserAll extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private Integer userId;
	private ClientAll clientAll;
	private UserTypeAll userTypeAll;
	private String userName;
	private String password;
	private String locale;
	private String isActive;
	private String contactNo;
	private Timestamp lastLoginTime;
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
	private Integer lastModifiedBy;
	private TollOperatorAll tollOperatorAllByUserId;
	private Set<ClientAll> clientAlls = new HashSet<ClientAll>(0);
	private Set<VmlTypeAll> vmlTypeAlls = new HashSet<VmlTypeAll>(0);
	private Set<ServicePlanAll> servicePlanAlls = new HashSet<ServicePlanAll>(0);
	private Set<TollLocationAll> tollLocationAlls = new HashSet<TollLocationAll>(
			0);
	private Set<OwnerTypeAll> ownerTypeAlls = new HashSet<OwnerTypeAll>(0);
	private Set<PaymentTransactionAll> paymentTransactionAlls = new HashSet<PaymentTransactionAll>(
			0);
	private Set<UserVehicleAll> userVehicleAllsForLastModifiedBy = new HashSet<UserVehicleAll>(
			0);
	private Set<UserVehicleAll> userVehicleAllsForUserId = new HashSet<UserVehicleAll>(
			0);
	private Set<TollPriceAll> tollPriceAlls = new HashSet<TollPriceAll>(0);
	private Set<UserServiceAll> userServiceAllsForUserId = new HashSet<UserServiceAll>(
			0);
	private Set<UserTypeAll> userTypeAlls = new HashSet<UserTypeAll>(0);
	private Set<UserBalanceAll> userBalanceAllsForUserId = new HashSet<UserBalanceAll>(
			0);
	private UserPaymentDetailAll userPaymentDetailAllByUserId;
	private Set<UserBalanceLogAll> userBalanceLogAlls = new HashSet<UserBalanceLogAll>(
			0);
	private Set<ConfigurationAll> configurationAlls = new HashSet<ConfigurationAll>(
			0);
	private Set<ComponentAll> componentAlls = new HashSet<ComponentAll>(0);
	private Set<UserBalanceAll> userBalanceAllsForLastModifiedBy = new HashSet<UserBalanceAll>(
			0);
	private UserPaymentDetailAll userPaymentDetailAllByUserId;
	private Set<VehicleMovementLogAll> vehicleMovementLogAlls = new HashSet<VehicleMovementLogAll>(
			0);
	private Set<VehicleTypeAll> vehicleTypeAlls = new HashSet<VehicleTypeAll>(0);
	private Set<ComponentVersionAll> componentVersionAlls = new HashSet<ComponentVersionAll>(
			0);
	private Set<CcTypeAll> ccTypeAlls = new HashSet<CcTypeAll>(0);
	private Set<VehicleTollUsageAll> vehicleTollUsageAlls = new HashSet<VehicleTollUsageAll>(
			0);
	private Set<TollOperatorAll> tollOperatorAllsForLastModifiedBy = new HashSet<TollOperatorAll>(
			0);
	private Set<ClientAll> clientAlls_1 = new HashSet<ClientAll>(0);
	private Set<UserServiceAll> userServiceAllsForLastModifiedBy = new HashSet<UserServiceAll>(
			0);

	// Constructors

	/** default constructor */
	public AbstractUserAll() {
	}

	/** minimal constructor */
	public AbstractUserAll(ClientAll clientAll, UserTypeAll userTypeAll,
			String userName, String password, String isActive,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Integer lastModifiedBy) {
		this.clientAll = clientAll;
		this.userTypeAll = userTypeAll;
		this.userName = userName;
		this.password = password;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
		this.lastModifiedBy = lastModifiedBy;
	}

	/** full constructor */
	public AbstractUserAll(ClientAll clientAll, UserTypeAll userTypeAll,
			String userName, String password, String locale, String isActive,
			String contactNo, Timestamp lastLoginTime, String udf1,
			String udf2, String udf3, String udf4, String udf5, String flag1,
			String flag2, String flag3, String flag4, String flag5,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Integer lastModifiedBy, TollOperatorAll tollOperatorAllByUserId,
			Set<ClientAll> clientAlls, Set<VmlTypeAll> vmlTypeAlls,
			Set<ServicePlanAll> servicePlanAlls,
			Set<TollLocationAll> tollLocationAlls,
			Set<OwnerTypeAll> ownerTypeAlls,
			Set<PaymentTransactionAll> paymentTransactionAlls,
			Set<UserVehicleAll> userVehicleAllsForLastModifiedBy,
			Set<UserVehicleAll> userVehicleAllsForUserId,
			Set<TollPriceAll> tollPriceAlls,
			Set<UserServiceAll> userServiceAllsForUserId,
			Set<UserTypeAll> userTypeAlls,
			Set<UserBalanceAll> userBalanceAllsForUserId,
			UserPaymentDetailAll userPaymentDetailAllByUserId,
			Set<UserBalanceLogAll> userBalanceLogAlls,
			Set<ConfigurationAll> configurationAlls,
			Set<ComponentAll> componentAlls,
			Set<UserBalanceAll> userBalanceAllsForLastModifiedBy,
			UserPaymentDetailAll userPaymentDetailAllByUserId,
			Set<VehicleMovementLogAll> vehicleMovementLogAlls,
			Set<VehicleTypeAll> vehicleTypeAlls,
			Set<ComponentVersionAll> componentVersionAlls,
			Set<CcTypeAll> ccTypeAlls,
			Set<VehicleTollUsageAll> vehicleTollUsageAlls,
			Set<TollOperatorAll> tollOperatorAllsForLastModifiedBy,
			Set<ClientAll> clientAlls_1,
			Set<UserServiceAll> userServiceAllsForLastModifiedBy) {
		this.clientAll = clientAll;
		this.userTypeAll = userTypeAll;
		this.userName = userName;
		this.password = password;
		this.locale = locale;
		this.isActive = isActive;
		this.contactNo = contactNo;
		this.lastLoginTime = lastLoginTime;
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
		this.lastModifiedBy = lastModifiedBy;
		this.tollOperatorAllByUserId = tollOperatorAllByUserId;
		this.clientAlls = clientAlls;
		this.vmlTypeAlls = vmlTypeAlls;
		this.servicePlanAlls = servicePlanAlls;
		this.tollLocationAlls = tollLocationAlls;
		this.ownerTypeAlls = ownerTypeAlls;
		this.paymentTransactionAlls = paymentTransactionAlls;
		this.userVehicleAllsForLastModifiedBy = userVehicleAllsForLastModifiedBy;
		this.userVehicleAllsForUserId = userVehicleAllsForUserId;
		this.tollPriceAlls = tollPriceAlls;
		this.userServiceAllsForUserId = userServiceAllsForUserId;
		this.userTypeAlls = userTypeAlls;
		this.userBalanceAllsForUserId = userBalanceAllsForUserId;
		this.userPaymentDetailAllByUserId = userPaymentDetailAllByUserId;
		this.userBalanceLogAlls = userBalanceLogAlls;
		this.configurationAlls = configurationAlls;
		this.componentAlls = componentAlls;
		this.userBalanceAllsForLastModifiedBy = userBalanceAllsForLastModifiedBy;
		this.userPaymentDetailAllByUserId = userPaymentDetailAllByUserId;
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
		this.vehicleTypeAlls = vehicleTypeAlls;
		this.componentVersionAlls = componentVersionAlls;
		this.ccTypeAlls = ccTypeAlls;
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
		this.tollOperatorAllsForLastModifiedBy = tollOperatorAllsForLastModifiedBy;
		this.clientAlls_1 = clientAlls_1;
		this.userServiceAllsForLastModifiedBy = userServiceAllsForLastModifiedBy;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "user_id", unique = true, nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "client_id", nullable = false)
	public ClientAll getClientAll() {
		return this.clientAll;
	}

	public void setClientAll(ClientAll clientAll) {
		this.clientAll = clientAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "utype_id", nullable = false)
	public UserTypeAll getUserTypeAll() {
		return this.userTypeAll;
	}

	public void setUserTypeAll(UserTypeAll userTypeAll) {
		this.userTypeAll = userTypeAll;
	}

	@Column(name = "user_name", nullable = false, length = 320)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "password", nullable = false, length = 40)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "locale", length = 20)
	public String getLocale() {
		return this.locale;
	}

	public void setLocale(String locale) {
		this.locale = locale;
	}

	@Column(name = "is_active", nullable = false, length = 1)
	public String getIsActive() {
		return this.isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	@Column(name = "contact_no", length = 20)
	public String getContactNo() {
		return this.contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	@Column(name = "last_login_time", length = 19)
	public Timestamp getLastLoginTime() {
		return this.lastLoginTime;
	}

	public void setLastLoginTime(Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
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

	@Column(name = "last_modified_by", nullable = false)
	public Integer getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "userAllByUserId")
	public TollOperatorAll getTollOperatorAllByUserId() {
		return this.tollOperatorAllByUserId;
	}

	public void setTollOperatorAllByUserId(
			TollOperatorAll tollOperatorAllByUserId) {
		this.tollOperatorAllByUserId = tollOperatorAllByUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<ClientAll> getClientAlls() {
		return this.clientAlls;
	}

	public void setClientAlls(Set<ClientAll> clientAlls) {
		this.clientAlls = clientAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<VmlTypeAll> getVmlTypeAlls() {
		return this.vmlTypeAlls;
	}

	public void setVmlTypeAlls(Set<VmlTypeAll> vmlTypeAlls) {
		this.vmlTypeAlls = vmlTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<ServicePlanAll> getServicePlanAlls() {
		return this.servicePlanAlls;
	}

	public void setServicePlanAlls(Set<ServicePlanAll> servicePlanAlls) {
		this.servicePlanAlls = servicePlanAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<TollLocationAll> getTollLocationAlls() {
		return this.tollLocationAlls;
	}

	public void setTollLocationAlls(Set<TollLocationAll> tollLocationAlls) {
		this.tollLocationAlls = tollLocationAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<OwnerTypeAll> getOwnerTypeAlls() {
		return this.ownerTypeAlls;
	}

	public void setOwnerTypeAlls(Set<OwnerTypeAll> ownerTypeAlls) {
		this.ownerTypeAlls = ownerTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<PaymentTransactionAll> getPaymentTransactionAlls() {
		return this.paymentTransactionAlls;
	}

	public void setPaymentTransactionAlls(
			Set<PaymentTransactionAll> paymentTransactionAlls) {
		this.paymentTransactionAlls = paymentTransactionAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAllByLastModifiedBy")
	public Set<UserVehicleAll> getUserVehicleAllsForLastModifiedBy() {
		return this.userVehicleAllsForLastModifiedBy;
	}

	public void setUserVehicleAllsForLastModifiedBy(
			Set<UserVehicleAll> userVehicleAllsForLastModifiedBy) {
		this.userVehicleAllsForLastModifiedBy = userVehicleAllsForLastModifiedBy;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAllByUserId")
	public Set<UserVehicleAll> getUserVehicleAllsForUserId() {
		return this.userVehicleAllsForUserId;
	}

	public void setUserVehicleAllsForUserId(
			Set<UserVehicleAll> userVehicleAllsForUserId) {
		this.userVehicleAllsForUserId = userVehicleAllsForUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<TollPriceAll> getTollPriceAlls() {
		return this.tollPriceAlls;
	}

	public void setTollPriceAlls(Set<TollPriceAll> tollPriceAlls) {
		this.tollPriceAlls = tollPriceAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAllByUserId")
	public Set<UserServiceAll> getUserServiceAllsForUserId() {
		return this.userServiceAllsForUserId;
	}

	public void setUserServiceAllsForUserId(
			Set<UserServiceAll> userServiceAllsForUserId) {
		this.userServiceAllsForUserId = userServiceAllsForUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<UserTypeAll> getUserTypeAlls() {
		return this.userTypeAlls;
	}

	public void setUserTypeAlls(Set<UserTypeAll> userTypeAlls) {
		this.userTypeAlls = userTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAllByUserId")
	public Set<UserBalanceAll> getUserBalanceAllsForUserId() {
		return this.userBalanceAllsForUserId;
	}

	public void setUserBalanceAllsForUserId(
			Set<UserBalanceAll> userBalanceAllsForUserId) {
		this.userBalanceAllsForUserId = userBalanceAllsForUserId;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "userAllByUserId")
	public UserPaymentDetailAll getUserPaymentDetailAllByUserId() {
		return this.userPaymentDetailAllByUserId;
	}

	public void setUserPaymentDetailAllByUserId(
			UserPaymentDetailAll userPaymentDetailAllByUserId) {
		this.userPaymentDetailAllByUserId = userPaymentDetailAllByUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<UserBalanceLogAll> getUserBalanceLogAlls() {
		return this.userBalanceLogAlls;
	}

	public void setUserBalanceLogAlls(Set<UserBalanceLogAll> userBalanceLogAlls) {
		this.userBalanceLogAlls = userBalanceLogAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<ConfigurationAll> getConfigurationAlls() {
		return this.configurationAlls;
	}

	public void setConfigurationAlls(Set<ConfigurationAll> configurationAlls) {
		this.configurationAlls = configurationAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<ComponentAll> getComponentAlls() {
		return this.componentAlls;
	}

	public void setComponentAlls(Set<ComponentAll> componentAlls) {
		this.componentAlls = componentAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAllByLastModifiedBy")
	public Set<UserBalanceAll> getUserBalanceAllsForLastModifiedBy() {
		return this.userBalanceAllsForLastModifiedBy;
	}

	public void setUserBalanceAllsForLastModifiedBy(
			Set<UserBalanceAll> userBalanceAllsForLastModifiedBy) {
		this.userBalanceAllsForLastModifiedBy = userBalanceAllsForLastModifiedBy;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "userAllByUserId")
	public UserPaymentDetailAll getUserPaymentDetailAllByUserId() {
		return this.userPaymentDetailAllByUserId;
	}

	public void setUserPaymentDetailAllByUserId(
			UserPaymentDetailAll userPaymentDetailAllByUserId) {
		this.userPaymentDetailAllByUserId = userPaymentDetailAllByUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<VehicleMovementLogAll> getVehicleMovementLogAlls() {
		return this.vehicleMovementLogAlls;
	}

	public void setVehicleMovementLogAlls(
			Set<VehicleMovementLogAll> vehicleMovementLogAlls) {
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<VehicleTypeAll> getVehicleTypeAlls() {
		return this.vehicleTypeAlls;
	}

	public void setVehicleTypeAlls(Set<VehicleTypeAll> vehicleTypeAlls) {
		this.vehicleTypeAlls = vehicleTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<ComponentVersionAll> getComponentVersionAlls() {
		return this.componentVersionAlls;
	}

	public void setComponentVersionAlls(
			Set<ComponentVersionAll> componentVersionAlls) {
		this.componentVersionAlls = componentVersionAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<CcTypeAll> getCcTypeAlls() {
		return this.ccTypeAlls;
	}

	public void setCcTypeAlls(Set<CcTypeAll> ccTypeAlls) {
		this.ccTypeAlls = ccTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<VehicleTollUsageAll> getVehicleTollUsageAlls() {
		return this.vehicleTollUsageAlls;
	}

	public void setVehicleTollUsageAlls(
			Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAllByLastModifiedBy")
	public Set<TollOperatorAll> getTollOperatorAllsForLastModifiedBy() {
		return this.tollOperatorAllsForLastModifiedBy;
	}

	public void setTollOperatorAllsForLastModifiedBy(
			Set<TollOperatorAll> tollOperatorAllsForLastModifiedBy) {
		this.tollOperatorAllsForLastModifiedBy = tollOperatorAllsForLastModifiedBy;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAll")
	public Set<ClientAll> getClientAlls_1() {
		return this.clientAlls_1;
	}

	public void setClientAlls_1(Set<ClientAll> clientAlls_1) {
		this.clientAlls_1 = clientAlls_1;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userAllByLastModifiedBy")
	public Set<UserServiceAll> getUserServiceAllsForLastModifiedBy() {
		return this.userServiceAllsForLastModifiedBy;
	}

	public void setUserServiceAllsForLastModifiedBy(
			Set<UserServiceAll> userServiceAllsForLastModifiedBy) {
		this.userServiceAllsForLastModifiedBy = userServiceAllsForLastModifiedBy;
	}

}