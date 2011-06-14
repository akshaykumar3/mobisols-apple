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
 * UserBalanceLogAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_balance_log_all", catalog = "globaltoll")
public class UserBalanceLogAll implements java.io.Serializable {

	// Fields

	private Integer ublogId;
	private Timestamp timestamp;
	private ClientAll clientAll;
	private UserBalanceAll userBalanceAll;
	private UserAll userAll;
	private Double delta;
	private String action;
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
	private Set<PaymentTransactionAll> paymentTransactionAllsForToBlId = new HashSet<PaymentTransactionAll>(
			0);
	private Set<PaymentTransactionAll> paymentTransactionAllsForUserBlId = new HashSet<PaymentTransactionAll>(
			0);

	// Constructors

	/** default constructor */
	public UserBalanceLogAll() {
	}

	/** minimal constructor */
	public UserBalanceLogAll(UserBalanceAll userBalanceAll, Double delta,
			String action, Timestamp lastModifiedOn, Timestamp createdOn) {
		this.userBalanceAll = userBalanceAll;
		this.delta = delta;
		this.action = action;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/** full constructor */
	public UserBalanceLogAll(ClientAll clientAll,
			UserBalanceAll userBalanceAll, UserAll userAll, Double delta,
			String action, String udf1, String udf2, String udf3, String udf4,
			String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Timestamp lastModifiedOn,
			Timestamp createdOn,
			Set<PaymentTransactionAll> paymentTransactionAllsForToBlId,
			Set<PaymentTransactionAll> paymentTransactionAllsForUserBlId) {
		this.clientAll = clientAll;
		this.userBalanceAll = userBalanceAll;
		this.userAll = userAll;
		this.delta = delta;
		this.action = action;
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
		this.paymentTransactionAllsForToBlId = paymentTransactionAllsForToBlId;
		this.paymentTransactionAllsForUserBlId = paymentTransactionAllsForUserBlId;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "ublog_id", unique = true, nullable = false)
	public Integer getUblogId() {
		return this.ublogId;
	}

	public void setUblogId(Integer ublogId) {
		this.ublogId = ublogId;
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
	@JoinColumn(name = "client_id")
	public ClientAll getClientAll() {
		return this.clientAll;
	}

	public void setClientAll(ClientAll clientAll) {
		this.clientAll = clientAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ubal_id", nullable = false)
	public UserBalanceAll getUserBalanceAll() {
		return this.userBalanceAll;
	}

	public void setUserBalanceAll(UserBalanceAll userBalanceAll) {
		this.userBalanceAll = userBalanceAll;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "last_modified_by")
	public UserAll getUserAll() {
		return this.userAll;
	}

	public void setUserAll(UserAll userAll) {
		this.userAll = userAll;
	}

	@Column(name = "delta", nullable = false, scale = 4)
	public Double getDelta() {
		return this.delta;
	}

	public void setDelta(Double delta) {
		this.delta = delta;
	}

	@Column(name = "action", nullable = false, length = 200)
	public String getAction() {
		return this.action;
	}

	public void setAction(String action) {
		this.action = action;
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

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBalanceLogAllByToBlId")
	public Set<PaymentTransactionAll> getPaymentTransactionAllsForToBlId() {
		return this.paymentTransactionAllsForToBlId;
	}

	public void setPaymentTransactionAllsForToBlId(
			Set<PaymentTransactionAll> paymentTransactionAllsForToBlId) {
		this.paymentTransactionAllsForToBlId = paymentTransactionAllsForToBlId;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "userBalanceLogAllByUserBlId")
	public Set<PaymentTransactionAll> getPaymentTransactionAllsForUserBlId() {
		return this.paymentTransactionAllsForUserBlId;
	}

	public void setPaymentTransactionAllsForUserBlId(
			Set<PaymentTransactionAll> paymentTransactionAllsForUserBlId) {
		this.paymentTransactionAllsForUserBlId = paymentTransactionAllsForUserBlId;
	}

}