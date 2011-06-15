package com.mobisols.tollpayments.hibernate;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * PaymentTransactionId entity. @author MyEclipse Persistence Tools
 */
@Embeddable
public class PaymentTransactionId implements java.io.Serializable {

	// Fields

	private Integer ptranId;
	private Integer userBlId;
	private Integer toBlId;
	private Integer updhId;
	private Timestamp timestamp;
	private String status;
	private Double amount;
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
	private Integer lastModifiedBy;
	private Timestamp lastModifiedOn;
	private Timestamp createdOn;
	private Integer clientId;

	// Constructors

	/** default constructor */
	public PaymentTransactionId() {
	}

	/** minimal constructor */
	public PaymentTransactionId(Integer ptranId, Timestamp timestamp,
			String status, Double amount, Integer lastModifiedBy,
			Timestamp lastModifiedOn, Timestamp createdOn) {
		this.ptranId = ptranId;
		this.timestamp = timestamp;
		this.status = status;
		this.amount = amount;
		this.lastModifiedBy = lastModifiedBy;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/** full constructor */
	public PaymentTransactionId(Integer ptranId, Integer userBlId,
			Integer toBlId, Integer updhId, Timestamp timestamp, String status,
			Double amount, String udf1, String udf2, String udf3, String udf4,
			String udf5, String flag1, String flag2, String flag3,
			String flag4, String flag5, Integer lastModifiedBy,
			Timestamp lastModifiedOn, Timestamp createdOn, Integer clientId) {
		this.ptranId = ptranId;
		this.userBlId = userBlId;
		this.toBlId = toBlId;
		this.updhId = updhId;
		this.timestamp = timestamp;
		this.status = status;
		this.amount = amount;
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
		this.lastModifiedBy = lastModifiedBy;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
		this.clientId = clientId;
	}

	// Property accessors

	@Column(name = "ptran_id", nullable = false)
	public Integer getPtranId() {
		return this.ptranId;
	}

	public void setPtranId(Integer ptranId) {
		this.ptranId = ptranId;
	}

	@Column(name = "user_bl_id")
	public Integer getUserBlId() {
		return this.userBlId;
	}

	public void setUserBlId(Integer userBlId) {
		this.userBlId = userBlId;
	}

	@Column(name = "to_bl_id")
	public Integer getToBlId() {
		return this.toBlId;
	}

	public void setToBlId(Integer toBlId) {
		this.toBlId = toBlId;
	}

	@Column(name = "updh_id")
	public Integer getUpdhId() {
		return this.updhId;
	}

	public void setUpdhId(Integer updhId) {
		this.updhId = updhId;
	}

	@Column(name = "timestamp", nullable = false, length = 19)
	public Timestamp getTimestamp() {
		return this.timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	@Column(name = "status", nullable = false, length = 10)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "amount", nullable = false, scale = 4)
	public Double getAmount() {
		return this.amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
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

	@Column(name = "last_modified_by", nullable = false)
	public Integer getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
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

	@Column(name = "client_id")
	public Integer getClientId() {
		return this.clientId;
	}

	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof PaymentTransactionId))
			return false;
		PaymentTransactionId castOther = (PaymentTransactionId) other;

		return ((this.getPtranId() == castOther.getPtranId()) || (this
				.getPtranId() != null && castOther.getPtranId() != null && this
				.getPtranId().equals(castOther.getPtranId())))
				&& ((this.getUserBlId() == castOther.getUserBlId()) || (this
						.getUserBlId() != null
						&& castOther.getUserBlId() != null && this
						.getUserBlId().equals(castOther.getUserBlId())))
				&& ((this.getToBlId() == castOther.getToBlId()) || (this
						.getToBlId() != null && castOther.getToBlId() != null && this
						.getToBlId().equals(castOther.getToBlId())))
				&& ((this.getUpdhId() == castOther.getUpdhId()) || (this
						.getUpdhId() != null && castOther.getUpdhId() != null && this
						.getUpdhId().equals(castOther.getUpdhId())))
				&& ((this.getTimestamp() == castOther.getTimestamp()) || (this
						.getTimestamp() != null
						&& castOther.getTimestamp() != null && this
						.getTimestamp().equals(castOther.getTimestamp())))
				&& ((this.getStatus() == castOther.getStatus()) || (this
						.getStatus() != null && castOther.getStatus() != null && this
						.getStatus().equals(castOther.getStatus())))
				&& ((this.getAmount() == castOther.getAmount()) || (this
						.getAmount() != null && castOther.getAmount() != null && this
						.getAmount().equals(castOther.getAmount())))
				&& ((this.getUdf1() == castOther.getUdf1()) || (this.getUdf1() != null
						&& castOther.getUdf1() != null && this.getUdf1()
						.equals(castOther.getUdf1())))
				&& ((this.getUdf2() == castOther.getUdf2()) || (this.getUdf2() != null
						&& castOther.getUdf2() != null && this.getUdf2()
						.equals(castOther.getUdf2())))
				&& ((this.getUdf3() == castOther.getUdf3()) || (this.getUdf3() != null
						&& castOther.getUdf3() != null && this.getUdf3()
						.equals(castOther.getUdf3())))
				&& ((this.getUdf4() == castOther.getUdf4()) || (this.getUdf4() != null
						&& castOther.getUdf4() != null && this.getUdf4()
						.equals(castOther.getUdf4())))
				&& ((this.getUdf5() == castOther.getUdf5()) || (this.getUdf5() != null
						&& castOther.getUdf5() != null && this.getUdf5()
						.equals(castOther.getUdf5())))
				&& ((this.getFlag1() == castOther.getFlag1()) || (this
						.getFlag1() != null && castOther.getFlag1() != null && this
						.getFlag1().equals(castOther.getFlag1())))
				&& ((this.getFlag2() == castOther.getFlag2()) || (this
						.getFlag2() != null && castOther.getFlag2() != null && this
						.getFlag2().equals(castOther.getFlag2())))
				&& ((this.getFlag3() == castOther.getFlag3()) || (this
						.getFlag3() != null && castOther.getFlag3() != null && this
						.getFlag3().equals(castOther.getFlag3())))
				&& ((this.getFlag4() == castOther.getFlag4()) || (this
						.getFlag4() != null && castOther.getFlag4() != null && this
						.getFlag4().equals(castOther.getFlag4())))
				&& ((this.getFlag5() == castOther.getFlag5()) || (this
						.getFlag5() != null && castOther.getFlag5() != null && this
						.getFlag5().equals(castOther.getFlag5())))
				&& ((this.getLastModifiedBy() == castOther.getLastModifiedBy()) || (this
						.getLastModifiedBy() != null
						&& castOther.getLastModifiedBy() != null && this
						.getLastModifiedBy().equals(
								castOther.getLastModifiedBy())))
				&& ((this.getLastModifiedOn() == castOther.getLastModifiedOn()) || (this
						.getLastModifiedOn() != null
						&& castOther.getLastModifiedOn() != null && this
						.getLastModifiedOn().equals(
								castOther.getLastModifiedOn())))
				&& ((this.getCreatedOn() == castOther.getCreatedOn()) || (this
						.getCreatedOn() != null
						&& castOther.getCreatedOn() != null && this
						.getCreatedOn().equals(castOther.getCreatedOn())))
				&& ((this.getClientId() == castOther.getClientId()) || (this
						.getClientId() != null
						&& castOther.getClientId() != null && this
						.getClientId().equals(castOther.getClientId())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getPtranId() == null ? 0 : this.getPtranId().hashCode());
		result = 37 * result
				+ (getUserBlId() == null ? 0 : this.getUserBlId().hashCode());
		result = 37 * result
				+ (getToBlId() == null ? 0 : this.getToBlId().hashCode());
		result = 37 * result
				+ (getUpdhId() == null ? 0 : this.getUpdhId().hashCode());
		result = 37 * result
				+ (getTimestamp() == null ? 0 : this.getTimestamp().hashCode());
		result = 37 * result
				+ (getStatus() == null ? 0 : this.getStatus().hashCode());
		result = 37 * result
				+ (getAmount() == null ? 0 : this.getAmount().hashCode());
		result = 37 * result
				+ (getUdf1() == null ? 0 : this.getUdf1().hashCode());
		result = 37 * result
				+ (getUdf2() == null ? 0 : this.getUdf2().hashCode());
		result = 37 * result
				+ (getUdf3() == null ? 0 : this.getUdf3().hashCode());
		result = 37 * result
				+ (getUdf4() == null ? 0 : this.getUdf4().hashCode());
		result = 37 * result
				+ (getUdf5() == null ? 0 : this.getUdf5().hashCode());
		result = 37 * result
				+ (getFlag1() == null ? 0 : this.getFlag1().hashCode());
		result = 37 * result
				+ (getFlag2() == null ? 0 : this.getFlag2().hashCode());
		result = 37 * result
				+ (getFlag3() == null ? 0 : this.getFlag3().hashCode());
		result = 37 * result
				+ (getFlag4() == null ? 0 : this.getFlag4().hashCode());
		result = 37 * result
				+ (getFlag5() == null ? 0 : this.getFlag5().hashCode());
		result = 37
				* result
				+ (getLastModifiedBy() == null ? 0 : this.getLastModifiedBy()
						.hashCode());
		result = 37
				* result
				+ (getLastModifiedOn() == null ? 0 : this.getLastModifiedOn()
						.hashCode());
		result = 37 * result
				+ (getCreatedOn() == null ? 0 : this.getCreatedOn().hashCode());
		result = 37 * result
				+ (getClientId() == null ? 0 : this.getClientId().hashCode());
		return result;
	}

}