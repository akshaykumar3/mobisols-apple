package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * UserPaymentDetail entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "user_payment_detail", catalog = "globaltoll")
public class UserPaymentDetail implements java.io.Serializable {

	// Fields

	private UserPaymentDetailId id;

	// Constructors

	/** default constructor */
	public UserPaymentDetail() {
	}

	/** full constructor */
	public UserPaymentDetail(UserPaymentDetailId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "updId", column = @Column(name = "upd_id", nullable = false)),
			@AttributeOverride(name = "userId", column = @Column(name = "user_id")),
			@AttributeOverride(name = "ccTypeId", column = @Column(name = "cc_type_id")),
			@AttributeOverride(name = "ccAcName", column = @Column(name = "cc_ac_name", length = 45)),
			@AttributeOverride(name = "ccNumber", column = @Column(name = "cc_number", length = 15)),
			@AttributeOverride(name = "ccExpMonth", column = @Column(name = "cc_exp_month")),
			@AttributeOverride(name = "ccExpYear", column = @Column(name = "cc_exp_year", length = 0)),
			@AttributeOverride(name = "ccCvv", column = @Column(name = "cc_cvv")),
			@AttributeOverride(name = "bankRouting", column = @Column(name = "bank_routing", precision = 9, scale = 0)),
			@AttributeOverride(name = "bankAccount", column = @Column(name = "bank_account", precision = 10, scale = 0)),
			@AttributeOverride(name = "payPrefer", column = @Column(name = "pay_prefer", nullable = false, length = 1)),
			@AttributeOverride(name = "address1", column = @Column(name = "address1", length = 100)),
			@AttributeOverride(name = "address2", column = @Column(name = "address2", length = 100)),
			@AttributeOverride(name = "city", column = @Column(name = "city", length = 100)),
			@AttributeOverride(name = "state", column = @Column(name = "state", length = 100)),
			@AttributeOverride(name = "country", column = @Column(name = "country", length = 100)),
			@AttributeOverride(name = "zip", column = @Column(name = "zip", length = 10)),
			@AttributeOverride(name = "udf1", column = @Column(name = "udf1", length = 1000)),
			@AttributeOverride(name = "udf2", column = @Column(name = "udf2", length = 1000)),
			@AttributeOverride(name = "udf3", column = @Column(name = "udf3", length = 1000)),
			@AttributeOverride(name = "udf4", column = @Column(name = "udf4", length = 1000)),
			@AttributeOverride(name = "udf5", column = @Column(name = "udf5", length = 1000)),
			@AttributeOverride(name = "flag1", column = @Column(name = "flag1", length = 1)),
			@AttributeOverride(name = "flag2", column = @Column(name = "flag2", length = 1)),
			@AttributeOverride(name = "flag3", column = @Column(name = "flag3", length = 1)),
			@AttributeOverride(name = "flag4", column = @Column(name = "flag4", length = 1)),
			@AttributeOverride(name = "flag5", column = @Column(name = "flag5", length = 1)),
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by")),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", length = 19)),
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", length = 19)) })
	public UserPaymentDetailId getId() {
		return this.id;
	}

	public void setId(UserPaymentDetailId id) {
		this.id = id;
	}

}