package com.mobisols.tollpayments.hibernate;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;

/**
 * AbstractUdfDefinitionAll entity provides the base persistence definition of
 * the UdfDefinitionAll entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractUdfDefinitionAll extends GlobalToll implements
		java.io.Serializable {

	// Fields

	private Integer udfDefId;
	private String name;
	private Set<UdfDataAll> udfDataAlls = new HashSet<UdfDataAll>(0);

	// Constructors

	/** default constructor */
	public AbstractUdfDefinitionAll() {
	}

	/** full constructor */
	public AbstractUdfDefinitionAll(String name, Set<UdfDataAll> udfDataAlls) {
		this.name = name;
		this.udfDataAlls = udfDataAlls;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "udf_def_id", unique = true, nullable = false)
	public Integer getUdfDefId() {
		return this.udfDefId;
	}

	public void setUdfDefId(Integer udfDefId) {
		this.udfDefId = udfDefId;
	}

	@Column(name = "name", length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "udfDefinitionAll")
	public Set<UdfDataAll> getUdfDataAlls() {
		return this.udfDataAlls;
	}

	public void setUdfDataAlls(Set<UdfDataAll> udfDataAlls) {
		this.udfDataAlls = udfDataAlls;
	}

}