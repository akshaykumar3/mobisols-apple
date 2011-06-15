package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;

/**
 * AbstractVehicleTollUsageAll entity provides the base persistence definition
 * of the VehicleTollUsageAll entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractVehicleTollUsageAll extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private Integer vtuId;
	private Timestamp timestamp;
	private UserVehicleHistoryAll userVehicleHistoryAll;
	private ClientAll clientAll;
	private UserAll userAll;
	private PaymentTransactionAll paymentTransactionAll;
	private VehicleMovementLogAll vehicleMovementLogAll;
	private TollLocationAll tollLocationAll;
	private TollPriceHistoryAll tollPriceHistoryAll;
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

	// Constructors

	/** default constructor */
	public AbstractVehicleTollUsageAll() {
	}

	/** minimal constructor */
	public AbstractVehicleTollUsageAll(
			UserVehicleHistoryAll userVehicleHistoryAll, UserAll userAll,
			VehicleMovementLogAll vehicleMovementLogAll,
			TollLocationAll tollLocationAll, Timestamp lastModifiedOn,
			Timestamp createdOn) {
		this.userVehicleHistoryAll = userVehicleHistoryAll;
		this.userAll = userAll;
		this.vehicleMovementLogAll = vehicleMovementLogAll;
		this.tollLocationAll = tollLocationAll;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/** full constructor */
	public AbstractVehicleTollUsageAll(
			UserVehicleHistoryAll userVehicleHistoryAll, ClientAll clientAll,
			UserAll userAll, PaymentTransactionAll paymentTransactionAll,
			VehicleMovementLogAll vehicleMovementLogAll,
			TollLocationAll tollLocationAll,
			TollPriceHistoryAll tollPriceHistoryAll, String udf1, String udf2,
			String udf3, String udf4, String udf5, String flag1, String flag2,
			String flag3, String flag4, String flag5, Timestamp lastModifiedOn,
			Timestamp createdOn) {
		this.userVehicleHistoryAll = userVehicleHistoryAll;
		this.clientAll = clientAll;
		this.userAll = userAll;
		this.paymentTransactionAll = paymentTransactionAll;
		this.vehicleMovementLogAll = vehicleMovementLogAll;
		this.tollLocationAll = tollLocationAll;
		this.tollPriceHistoryAll = tollPriceHistoryAll;
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
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "vtu_id", unique = true, nullable = false)
	public Integer getVtuId() {
		return this.vtuId;
	}

	public void setVtuId(Integer vtuId) {
		this.vtuId = vtuId;
	}

	@Version
	@Column(name = "timestamp", nullable = false, length = 19)
	public Timestamp getTimestamp() {
		return this.timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "uvh_id", nullable = false)
	public UserVehicleHistoryAll getUserVehicleHistoryAll() {
		return this.userVehicleHistoryAll;
	}

	public void setUserVehicleHistoryAll(
			UserVehicleHistoryAll userVehicleHistoryAll) {
		this.userVehicleHistoryAll = userVehicleHistoryAll;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ptran_id")
	public PaymentTransactionAll getPaymentTransactionAll() {
		return this.paymentTransactionAll;
	}

	public void setPaymentTransactionAll(
			PaymentTransactionAll paymentTransactionAll) {
		this.paymentTransactionAll = paymentTransactionAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "vml_id", nullable = false)
	public VehicleMovementLogAll getVehicleMovementLogAll() {
		return this.vehicleMovementLogAll;
	}

	public void setVehicleMovementLogAll(
			VehicleMovementLogAll vehicleMovementLogAll) {
		this.vehicleMovementLogAll = vehicleMovementLogAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "toll_loc_id", nullable = false)
	public TollLocationAll getTollLocationAll() {
		return this.tollLocationAll;
	}

	public void setTollLocationAll(TollLocationAll tollLocationAll) {
		this.tollLocationAll = tollLocationAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tph_id")
	public TollPriceHistoryAll getTollPriceHistoryAll() {
		return this.tollPriceHistoryAll;
	}

	public void setTollPriceHistoryAll(TollPriceHistoryAll tollPriceHistoryAll) {
		this.tollPriceHistoryAll = tollPriceHistoryAll;
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

}