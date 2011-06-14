package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * UserServiceAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_service_all", catalog = "globaltoll")
public class UserServiceAll implements java.io.Serializable {

	// Fields

	private Integer userServiceId;
	private ClientAll clientAll;
	private UserAll userAllByLastModifiedBy;
	private UserAll userAllByUserId;
	private ServicePlanAll servicePlanAll;
	private Timestamp startDate;
	private Timestamp endDate;
	private Integer priority;
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
	public UserServiceAll() {
	}

	/** minimal constructor */
	public UserServiceAll(UserAll userAllByLastModifiedBy, Timestamp startDate,
			Timestamp endDate, Timestamp createdOn, Timestamp lastModifiedOn) {
		this.userAllByLastModifiedBy = userAllByLastModifiedBy;
		this.startDate = startDate;
		this.endDate = endDate;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
	}

	/** full constructor */
	public UserServiceAll(ClientAll clientAll, UserAll userAllByLastModifiedBy,
			UserAll userAllByUserId, ServicePlanAll servicePlanAll,
			Timestamp startDate, Timestamp endDate, Integer priority,
			String udf1, String udf2, String udf3, String udf4, String udf5,
			String flag1, String flag2, String flag3, String flag4,
			String flag5, Timestamp createdOn, Timestamp lastModifiedOn) {
		this.clientAll = clientAll;
		this.userAllByLastModifiedBy = userAllByLastModifiedBy;
		this.userAllByUserId = userAllByUserId;
		this.servicePlanAll = servicePlanAll;
		this.startDate = startDate;
		this.endDate = endDate;
		this.priority = priority;
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
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "user_service_id", unique = true, nullable = false)
	public Integer getUserServiceId() {
		return this.userServiceId;
	}

	public void setUserServiceId(Integer userServiceId) {
		this.userServiceId = userServiceId;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	public UserAll getUserAllByUserId() {
		return this.userAllByUserId;
	}

	public void setUserAllByUserId(UserAll userAllByUserId) {
		this.userAllByUserId = userAllByUserId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "service_id")
	public ServicePlanAll getServicePlanAll() {
		return this.servicePlanAll;
	}

	public void setServicePlanAll(ServicePlanAll servicePlanAll) {
		this.servicePlanAll = servicePlanAll;
	}

	@Column(name = "start_date", nullable = false, length = 19)
	public Timestamp getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	@Column(name = "end_date", nullable = false, length = 19)
	public Timestamp getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	@Column(name = "priority")
	public Integer getPriority() {
		return this.priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
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