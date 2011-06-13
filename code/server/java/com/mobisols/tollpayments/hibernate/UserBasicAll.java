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
 * UserBasicAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_basic_all", catalog = "globaltoll", uniqueConstraints = @UniqueConstraint(columnNames = {
		"user_name", "client_id" }))
public class UserBasicAll implements java.io.Serializable {

	// Fields

	private Integer userId;
	private ClientAll clientAll;
	private UserBasicAll userBasicAll;
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
	private Set<ComponentAll> componentAlls = new HashSet<ComponentAll>(0);
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
	private Set<UserBalanceAll> userBalanceAllsForLastModifiedBy = new HashSet<UserBalanceAll>(
			0);
	private Set<VehicleMovementLogAll> vehicleMovementLogAlls = new HashSet<VehicleMovementLogAll>(
			0);
	private UserPaymentDetailAll userPaymentDetailAllByUserId;
	private Set<VehicleTypeAll> vehicleTypeAlls = new HashSet<VehicleTypeAll>(0);
	private Set<ComponentVersionAll> componentVersionAlls = new HashSet<ComponentVersionAll>(
			0);
	private Set<CcTypeAll> ccTypeAlls = new HashSet<CcTypeAll>(0);
	private Set<UserBasicAll> userBasicAlls = new HashSet<UserBasicAll>(0);
	private Set<ComponentAll> componentAlls_1 = new HashSet<ComponentAll>(0);
	private Set<VehicleTollUsageAll> vehicleTollUsageAlls = new HashSet<VehicleTollUsageAll>(
			0);
	private Set<ComponentVersionAll> componentVersionAlls_1 = new HashSet<ComponentVersionAll>(
			0);
	private Set<TollOperatorAll> tollOperatorAllsForLastModifiedBy = new HashSet<TollOperatorAll>(
			0);
	private Set<ClientAll> clientAlls_1 = new HashSet<ClientAll>(0);
	private Set<UserServiceAll> userServiceAllsForLastModifiedBy = new HashSet<UserServiceAll>(
			0);
	private Set<ConfigurationAll> configurationAlls_1 = new HashSet<ConfigurationAll>(
			0);

	// Constructors

	/** default constructor */
	public UserBasicAll() {
	}

	/** minimal constructor */
	public UserBasicAll(ClientAll clientAll, UserBasicAll userBasicAll,
			UserTypeAll userTypeAll, String userName, String password,
			String isActive, Timestamp createdOn, Timestamp lastModifiedOn) {
		this.clientAll = clientAll;
		this.userBasicAll = userBasicAll;
		this.userTypeAll = userTypeAll;
		this.userName = userName;
		this.password = password;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
	}

	/** full constructor */
	public UserBasicAll(ClientAll clientAll, UserBasicAll userBasicAll,
			UserTypeAll userTypeAll, String userName, String password,
			String locale, String isActive, String contactNo,
			Timestamp lastLoginTime, String udf1, String udf2, String udf3,
			String udf4, String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Timestamp createdOn,
			Timestamp lastModifiedOn, Set<ComponentAll> componentAlls,
			TollOperatorAll tollOperatorAllByUserId, Set<ClientAll> clientAlls,
			Set<VmlTypeAll> vmlTypeAlls, Set<ServicePlanAll> servicePlanAlls,
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
			Set<UserBalanceAll> userBalanceAllsForLastModifiedBy,
			Set<VehicleMovementLogAll> vehicleMovementLogAlls,
			UserPaymentDetailAll userPaymentDetailAllByUserId,
			Set<VehicleTypeAll> vehicleTypeAlls,
			Set<ComponentVersionAll> componentVersionAlls,
			Set<CcTypeAll> ccTypeAlls, Set<UserBasicAll> userBasicAlls,
			Set<ComponentAll> componentAlls_1,
			Set<VehicleTollUsageAll> vehicleTollUsageAlls,
			Set<ComponentVersionAll> componentVersionAlls_1,
			Set<TollOperatorAll> tollOperatorAllsForLastModifiedBy,
			Set<ClientAll> clientAlls_1,
			Set<UserServiceAll> userServiceAllsForLastModifiedBy,
			Set<ConfigurationAll> configurationAlls_1) {
		this.clientAll = clientAll;
		this.userBasicAll = userBasicAll;
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
		this.componentAlls = componentAlls;
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
		this.userBalanceAllsForLastModifiedBy = userBalanceAllsForLastModifiedBy;
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
		this.userPaymentDetailAllByUserId = userPaymentDetailAllByUserId;
		this.vehicleTypeAlls = vehicleTypeAlls;
		this.componentVersionAlls = componentVersionAlls;
		this.ccTypeAlls = ccTypeAlls;
		this.userBasicAlls = userBasicAlls;
		this.componentAlls_1 = componentAlls_1;
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
		this.componentVersionAlls_1 = componentVersionAlls_1;
		this.tollOperatorAllsForLastModifiedBy = tollOperatorAllsForLastModifiedBy;
		this.clientAlls_1 = clientAlls_1;
		this.userServiceAllsForLastModifiedBy = userServiceAllsForLastModifiedBy;
		this.configurationAlls_1 = configurationAlls_1;
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
	@JoinColumn(name = "last_modified_by", nullable = false)
	public UserBasicAll getUserBasicAll() {
		return this.userBasicAll;
	}

	public void setUserBasicAll(UserBasicAll userBasicAll) {
		this.userBasicAll = userBasicAll;
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

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<ComponentAll> getComponentAlls() {
		return this.componentAlls;
	}

	public void setComponentAlls(Set<ComponentAll> componentAlls) {
		this.componentAlls = componentAlls;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "userBasicAllByUserId")
	public TollOperatorAll getTollOperatorAllByUserId() {
		return this.tollOperatorAllByUserId;
	}

	public void setTollOperatorAllByUserId(
			TollOperatorAll tollOperatorAllByUserId) {
		this.tollOperatorAllByUserId = tollOperatorAllByUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<ClientAll> getClientAlls() {
		return this.clientAlls;
	}

	public void setClientAlls(Set<ClientAll> clientAlls) {
		this.clientAlls = clientAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<VmlTypeAll> getVmlTypeAlls() {
		return this.vmlTypeAlls;
	}

	public void setVmlTypeAlls(Set<VmlTypeAll> vmlTypeAlls) {
		this.vmlTypeAlls = vmlTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<ServicePlanAll> getServicePlanAlls() {
		return this.servicePlanAlls;
	}

	public void setServicePlanAlls(Set<ServicePlanAll> servicePlanAlls) {
		this.servicePlanAlls = servicePlanAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<TollLocationAll> getTollLocationAlls() {
		return this.tollLocationAlls;
	}

	public void setTollLocationAlls(Set<TollLocationAll> tollLocationAlls) {
		this.tollLocationAlls = tollLocationAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<OwnerTypeAll> getOwnerTypeAlls() {
		return this.ownerTypeAlls;
	}

	public void setOwnerTypeAlls(Set<OwnerTypeAll> ownerTypeAlls) {
		this.ownerTypeAlls = ownerTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<PaymentTransactionAll> getPaymentTransactionAlls() {
		return this.paymentTransactionAlls;
	}

	public void setPaymentTransactionAlls(
			Set<PaymentTransactionAll> paymentTransactionAlls) {
		this.paymentTransactionAlls = paymentTransactionAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAllByLastModifiedBy")
	public Set<UserVehicleAll> getUserVehicleAllsForLastModifiedBy() {
		return this.userVehicleAllsForLastModifiedBy;
	}

	public void setUserVehicleAllsForLastModifiedBy(
			Set<UserVehicleAll> userVehicleAllsForLastModifiedBy) {
		this.userVehicleAllsForLastModifiedBy = userVehicleAllsForLastModifiedBy;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAllByUserId")
	public Set<UserVehicleAll> getUserVehicleAllsForUserId() {
		return this.userVehicleAllsForUserId;
	}

	public void setUserVehicleAllsForUserId(
			Set<UserVehicleAll> userVehicleAllsForUserId) {
		this.userVehicleAllsForUserId = userVehicleAllsForUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<TollPriceAll> getTollPriceAlls() {
		return this.tollPriceAlls;
	}

	public void setTollPriceAlls(Set<TollPriceAll> tollPriceAlls) {
		this.tollPriceAlls = tollPriceAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAllByUserId")
	public Set<UserServiceAll> getUserServiceAllsForUserId() {
		return this.userServiceAllsForUserId;
	}

	public void setUserServiceAllsForUserId(
			Set<UserServiceAll> userServiceAllsForUserId) {
		this.userServiceAllsForUserId = userServiceAllsForUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<UserTypeAll> getUserTypeAlls() {
		return this.userTypeAlls;
	}

	public void setUserTypeAlls(Set<UserTypeAll> userTypeAlls) {
		this.userTypeAlls = userTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAllByUserId")
	public Set<UserBalanceAll> getUserBalanceAllsForUserId() {
		return this.userBalanceAllsForUserId;
	}

	public void setUserBalanceAllsForUserId(
			Set<UserBalanceAll> userBalanceAllsForUserId) {
		this.userBalanceAllsForUserId = userBalanceAllsForUserId;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "userBasicAllByUserId")
	public UserPaymentDetailAll getUserPaymentDetailAllByUserId() {
		return this.userPaymentDetailAllByUserId;
	}

	public void setUserPaymentDetailAllByUserId(
			UserPaymentDetailAll userPaymentDetailAllByUserId) {
		this.userPaymentDetailAllByUserId = userPaymentDetailAllByUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<UserBalanceLogAll> getUserBalanceLogAlls() {
		return this.userBalanceLogAlls;
	}

	public void setUserBalanceLogAlls(Set<UserBalanceLogAll> userBalanceLogAlls) {
		this.userBalanceLogAlls = userBalanceLogAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<ConfigurationAll> getConfigurationAlls() {
		return this.configurationAlls;
	}

	public void setConfigurationAlls(Set<ConfigurationAll> configurationAlls) {
		this.configurationAlls = configurationAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAllByLastModifiedBy")
	public Set<UserBalanceAll> getUserBalanceAllsForLastModifiedBy() {
		return this.userBalanceAllsForLastModifiedBy;
	}

	public void setUserBalanceAllsForLastModifiedBy(
			Set<UserBalanceAll> userBalanceAllsForLastModifiedBy) {
		this.userBalanceAllsForLastModifiedBy = userBalanceAllsForLastModifiedBy;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<VehicleMovementLogAll> getVehicleMovementLogAlls() {
		return this.vehicleMovementLogAlls;
	}

	public void setVehicleMovementLogAlls(
			Set<VehicleMovementLogAll> vehicleMovementLogAlls) {
		this.vehicleMovementLogAlls = vehicleMovementLogAlls;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "userBasicAllByUserId")
	public UserPaymentDetailAll getUserPaymentDetailAllByUserId() {
		return this.userPaymentDetailAllByUserId;
	}

	public void setUserPaymentDetailAllByUserId(
			UserPaymentDetailAll userPaymentDetailAllByUserId) {
		this.userPaymentDetailAllByUserId = userPaymentDetailAllByUserId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<VehicleTypeAll> getVehicleTypeAlls() {
		return this.vehicleTypeAlls;
	}

	public void setVehicleTypeAlls(Set<VehicleTypeAll> vehicleTypeAlls) {
		this.vehicleTypeAlls = vehicleTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<ComponentVersionAll> getComponentVersionAlls() {
		return this.componentVersionAlls;
	}

	public void setComponentVersionAlls(
			Set<ComponentVersionAll> componentVersionAlls) {
		this.componentVersionAlls = componentVersionAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<CcTypeAll> getCcTypeAlls() {
		return this.ccTypeAlls;
	}

	public void setCcTypeAlls(Set<CcTypeAll> ccTypeAlls) {
		this.ccTypeAlls = ccTypeAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<UserBasicAll> getUserBasicAlls() {
		return this.userBasicAlls;
	}

	public void setUserBasicAlls(Set<UserBasicAll> userBasicAlls) {
		this.userBasicAlls = userBasicAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<ComponentAll> getComponentAlls_1() {
		return this.componentAlls_1;
	}

	public void setComponentAlls_1(Set<ComponentAll> componentAlls_1) {
		this.componentAlls_1 = componentAlls_1;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<VehicleTollUsageAll> getVehicleTollUsageAlls() {
		return this.vehicleTollUsageAlls;
	}

	public void setVehicleTollUsageAlls(
			Set<VehicleTollUsageAll> vehicleTollUsageAlls) {
		this.vehicleTollUsageAlls = vehicleTollUsageAlls;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<ComponentVersionAll> getComponentVersionAlls_1() {
		return this.componentVersionAlls_1;
	}

	public void setComponentVersionAlls_1(
			Set<ComponentVersionAll> componentVersionAlls_1) {
		this.componentVersionAlls_1 = componentVersionAlls_1;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAllByLastModifiedBy")
	public Set<TollOperatorAll> getTollOperatorAllsForLastModifiedBy() {
		return this.tollOperatorAllsForLastModifiedBy;
	}

	public void setTollOperatorAllsForLastModifiedBy(
			Set<TollOperatorAll> tollOperatorAllsForLastModifiedBy) {
		this.tollOperatorAllsForLastModifiedBy = tollOperatorAllsForLastModifiedBy;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<ClientAll> getClientAlls_1() {
		return this.clientAlls_1;
	}

	public void setClientAlls_1(Set<ClientAll> clientAlls_1) {
		this.clientAlls_1 = clientAlls_1;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAllByLastModifiedBy")
	public Set<UserServiceAll> getUserServiceAllsForLastModifiedBy() {
		return this.userServiceAllsForLastModifiedBy;
	}

	public void setUserServiceAllsForLastModifiedBy(
			Set<UserServiceAll> userServiceAllsForLastModifiedBy) {
		this.userServiceAllsForLastModifiedBy = userServiceAllsForLastModifiedBy;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBasicAll")
	public Set<ConfigurationAll> getConfigurationAlls_1() {
		return this.configurationAlls_1;
	}

	public void setConfigurationAlls_1(Set<ConfigurationAll> configurationAlls_1) {
		this.configurationAlls_1 = configurationAlls_1;
	}

}