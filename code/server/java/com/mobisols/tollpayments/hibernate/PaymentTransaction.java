package com.mobisols.tollpayments.hibernate;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * PaymentTransaction entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "payment_transaction", catalog = "globaltoll")
public class PaymentTransaction implements java.io.Serializable {

	// Fields

	private PaymentTransactionId id;

	// Constructors

	/** default constructor */
	public PaymentTransaction() {
	}

	/** full constructor */
	public PaymentTransaction(PaymentTransactionId id) {
		this.id = id;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "ptranId", column = @Column(name = "ptran_id", nullable = false)),
			@AttributeOverride(name = "userBlId", column = @Column(name = "user_bl_id")),
			@AttributeOverride(name = "toBlId", column = @Column(name = "to_bl_id")),
			@AttributeOverride(name = "updhId", column = @Column(name = "updh_id")),
			@AttributeOverride(name = "timestamp", column = @Column(name = "timestamp", nullable = false, length = 19)),
			@AttributeOverride(name = "status", column = @Column(name = "status", nullable = false, length = 10)),
			@AttributeOverride(name = "amount", column = @Column(name = "amount", nullable = false, scale = 4)),
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
			@AttributeOverride(name = "lastModifiedBy", column = @Column(name = "last_modified_by", nullable = false)),
			@AttributeOverride(name = "lastModifiedOn", column = @Column(name = "last_modified_on", nullable = false, length = 19)),
			@AttributeOverride(name = "createdOn", column = @Column(name = "created_on", nullable = false, length = 19)),
			@AttributeOverride(name = "clientId", column = @Column(name = "client_id")) })
	public PaymentTransactionId getId() {
		return this.id;
	}

	public void setId(PaymentTransactionId id) {
		this.id = id;
	}

}