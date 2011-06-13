package com.mobisols.tollpayments.hibernate;

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
 * UdfDataAll entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "udf_data_all", catalog = "globaltoll")
public class UdfDataAll implements java.io.Serializable {

	// Fields

	private Integer udfDataId;
	private UdfDefinitionAll udfDefinitionAll;
	private String udfValue;

	// Constructors

	/** default constructor */
	public UdfDataAll() {
	}

	/** full constructor */
	public UdfDataAll(UdfDefinitionAll udfDefinitionAll, String udfValue) {
		this.udfDefinitionAll = udfDefinitionAll;
		this.udfValue = udfValue;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "udf_data_id", unique = true, nullable = false)
	public Integer getUdfDataId() {
		return this.udfDataId;
	}

	public void setUdfDataId(Integer udfDataId) {
		this.udfDataId = udfDataId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "udf_def_id")
	public UdfDefinitionAll getUdfDefinitionAll() {
		return this.udfDefinitionAll;
	}

	public void setUdfDefinitionAll(UdfDefinitionAll udfDefinitionAll) {
		this.udfDefinitionAll = udfDefinitionAll;
	}

	@Column(name = "udf_value", length = 1000)
	public String getUdfValue() {
		return this.udfValue;
	}

	public void setUdfValue(String udfValue) {
		this.udfValue = udfValue;
	}

}