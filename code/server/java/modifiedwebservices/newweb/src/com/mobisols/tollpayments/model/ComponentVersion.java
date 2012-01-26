package com.mobisols.tollpayments.model;

import java.sql.Timestamp;
import java.util.Set;

// TODO: Auto-generated Javadoc
/**
 * ComponentVersionId entity. @author MyEclipse Persistence Tools
 */

public class ComponentVersion implements java.io.Serializable {

	// Fields

	/** The comp version id. */
	private Integer compVersionId;
	
	/** The component id. */
	private Integer componentId;
	
	/** The description. */
	private String description;
	
	/** The list of changes. */
	private String listOfChanges;
	
	/** The udf1. */
	private String udf1;
	
	/** The udf2. */
	private String udf2;
	
	/** The udf3. */
	private String udf3;
	
	/** The udf4. */
	private String udf4;
	
	/** The udf5. */
	private String udf5;
	
	/** The flag1. */
	private String flag1;
	
	/** The flag2. */
	private String flag2;
	
	/** The flag3. */
	private String flag3;
	
	/** The flag4. */
	private String flag4;
	
	/** The flag5. */
	private String flag5;
	
	/** The created on. */
	private Timestamp createdOn;
	
	/** The last modified on. */
	private Timestamp lastModifiedOn;
	
	/** The last modified by. */
	private Integer lastModifiedBy;
	
	/** The version. */
	private String version;
	
	/** The component. */
	private Component component;
	
	/** The configuration. */
	private Set<Configuration> configuration;
	// Constructors

	/**
	 * Gets the component.
	 *
	 * @return the component
	 */
	public Component getComponent() {
		return component;
	}

	/**
	 * Gets the configuration.
	 *
	 * @return the configuration
	 */
	public Set<Configuration> getConfiguration() {
		return configuration;
	}

	/**
	 * Sets the configuration.
	 *
	 * @param configuration the new configuration
	 */
	public void setConfiguration(Set<Configuration> configuration) {
		this.configuration = configuration;
	}

	/**
	 * Sets the component.
	 *
	 * @param component the new component
	 */
	public void setComponent(Component component) {
		this.component = component;
	}


	/**
	 * default constructor.
	 */
	public ComponentVersion() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param compVersionId the comp version id
	 * @param createdOn the created on
	 * @param lastModifiedOn the last modified on
	 * @param lastModifiedBy the last modified by
	 */
	public ComponentVersion(Integer compVersionId, Timestamp createdOn,
			Timestamp lastModifiedOn, Integer lastModifiedBy) {
		this.compVersionId = compVersionId;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
		this.lastModifiedBy = lastModifiedBy;
	}

	/**
	 * full constructor.
	 *
	 * @param compVersionId the comp version id
	 * @param componentId the component id
	 * @param description the description
	 * @param listOfChanges the list of changes
	 * @param udf1 the udf1
	 * @param udf2 the udf2
	 * @param udf3 the udf3
	 * @param udf4 the udf4
	 * @param udf5 the udf5
	 * @param flag1 the flag1
	 * @param flag2 the flag2
	 * @param flag3 the flag3
	 * @param flag4 the flag4
	 * @param flag5 the flag5
	 * @param createdOn the created on
	 * @param lastModifiedOn the last modified on
	 * @param lastModifiedBy the last modified by
	 * @param version the version
	 */
	public ComponentVersion(Integer compVersionId, Integer componentId,
			String description, String listOfChanges, String udf1, String udf2,
			String udf3, String udf4, String udf5, String flag1, String flag2,
			String flag3, String flag4, String flag5, Timestamp createdOn,
			Timestamp lastModifiedOn, Integer lastModifiedBy, String version) {
		this.compVersionId = compVersionId;
		this.componentId = componentId;
		this.description = description;
		this.listOfChanges = listOfChanges;
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
		this.version = version;
	}

	// Property accessors

	/**
	 * Gets the comp version id.
	 *
	 * @return the comp version id
	 */
	public Integer getCompVersionId() {
		return this.compVersionId;
	}

	/**
	 * Sets the comp version id.
	 *
	 * @param compVersionId the new comp version id
	 */
	public void setCompVersionId(Integer compVersionId) {
		this.compVersionId = compVersionId;
	}

	/**
	 * Gets the component id.
	 *
	 * @return the component id
	 */
	public Integer getComponentId() {
		return this.componentId;
	}

	/**
	 * Sets the component id.
	 *
	 * @param componentId the new component id
	 */
	public void setComponentId(Integer componentId) {
		this.componentId = componentId;
	}

	/**
	 * Gets the description.
	 *
	 * @return the description
	 */
	public String getDescription() {
		return this.description;
	}

	/**
	 * Sets the description.
	 *
	 * @param description the new description
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * Gets the list of changes.
	 *
	 * @return the list of changes
	 */
	public String getListOfChanges() {
		return this.listOfChanges;
	}

	/**
	 * Sets the list of changes.
	 *
	 * @param listOfChanges the new list of changes
	 */
	public void setListOfChanges(String listOfChanges) {
		this.listOfChanges = listOfChanges;
	}

	/**
	 * Gets the udf1.
	 *
	 * @return the udf1
	 */
	public String getUdf1() {
		return this.udf1;
	}

	/**
	 * Sets the udf1.
	 *
	 * @param udf1 the new udf1
	 */
	public void setUdf1(String udf1) {
		this.udf1 = udf1;
	}

	/**
	 * Gets the udf2.
	 *
	 * @return the udf2
	 */
	public String getUdf2() {
		return this.udf2;
	}

	/**
	 * Sets the udf2.
	 *
	 * @param udf2 the new udf2
	 */
	public void setUdf2(String udf2) {
		this.udf2 = udf2;
	}

	/**
	 * Gets the udf3.
	 *
	 * @return the udf3
	 */
	public String getUdf3() {
		return this.udf3;
	}

	/**
	 * Sets the udf3.
	 *
	 * @param udf3 the new udf3
	 */
	public void setUdf3(String udf3) {
		this.udf3 = udf3;
	}

	/**
	 * Gets the udf4.
	 *
	 * @return the udf4
	 */
	public String getUdf4() {
		return this.udf4;
	}

	/**
	 * Sets the udf4.
	 *
	 * @param udf4 the new udf4
	 */
	public void setUdf4(String udf4) {
		this.udf4 = udf4;
	}

	/**
	 * Gets the udf5.
	 *
	 * @return the udf5
	 */
	public String getUdf5() {
		return this.udf5;
	}

	/**
	 * Sets the udf5.
	 *
	 * @param udf5 the new udf5
	 */
	public void setUdf5(String udf5) {
		this.udf5 = udf5;
	}

	/**
	 * Gets the flag1.
	 *
	 * @return the flag1
	 */
	public String getFlag1() {
		return this.flag1;
	}

	/**
	 * Sets the flag1.
	 *
	 * @param flag1 the new flag1
	 */
	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}

	/**
	 * Gets the flag2.
	 *
	 * @return the flag2
	 */
	public String getFlag2() {
		return this.flag2;
	}

	/**
	 * Sets the flag2.
	 *
	 * @param flag2 the new flag2
	 */
	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}

	/**
	 * Gets the flag3.
	 *
	 * @return the flag3
	 */
	public String getFlag3() {
		return this.flag3;
	}

	/**
	 * Sets the flag3.
	 *
	 * @param flag3 the new flag3
	 */
	public void setFlag3(String flag3) {
		this.flag3 = flag3;
	}

	/**
	 * Gets the flag4.
	 *
	 * @return the flag4
	 */
	public String getFlag4() {
		return this.flag4;
	}

	/**
	 * Sets the flag4.
	 *
	 * @param flag4 the new flag4
	 */
	public void setFlag4(String flag4) {
		this.flag4 = flag4;
	}

	/**
	 * Gets the flag5.
	 *
	 * @return the flag5
	 */
	public String getFlag5() {
		return this.flag5;
	}

	/**
	 * Sets the flag5.
	 *
	 * @param flag5 the new flag5
	 */
	public void setFlag5(String flag5) {
		this.flag5 = flag5;
	}

	/**
	 * Gets the created on.
	 *
	 * @return the created on
	 */
	public Timestamp getCreatedOn() {
		return this.createdOn;
	}

	/**
	 * Sets the created on.
	 *
	 * @param createdOn the new created on
	 */
	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}

	/**
	 * Gets the last modified on.
	 *
	 * @return the last modified on
	 */
	public Timestamp getLastModifiedOn() {
		return this.lastModifiedOn;
	}

	/**
	 * Sets the last modified on.
	 *
	 * @param lastModifiedOn the new last modified on
	 */
	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}

	/**
	 * Gets the last modified by.
	 *
	 * @return the last modified by
	 */
	public Integer getLastModifiedBy() {
		return this.lastModifiedBy;
	}

	/**
	 * Sets the last modified by.
	 *
	 * @param lastModifiedBy the new last modified by
	 */
	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}

	/**
	 * Gets the version.
	 *
	 * @return the version
	 */
	public String getVersion() {
		return this.version;
	}

	/**
	 * Sets the version.
	 *
	 * @param version the new version
	 */
	public void setVersion(String version) {
		this.version = version;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ComponentVersion))
			return false;
		ComponentVersion castOther = (ComponentVersion) other;

		return ((this.getCompVersionId() == castOther.getCompVersionId()) || (this
				.getCompVersionId() != null
				&& castOther.getCompVersionId() != null && this
				.getCompVersionId().equals(castOther.getCompVersionId())))
				&& ((this.getComponentId() == castOther.getComponentId()) || (this
						.getComponentId() != null
						&& castOther.getComponentId() != null && this
						.getComponentId().equals(castOther.getComponentId())))
				&& ((this.getDescription() == castOther.getDescription()) || (this
						.getDescription() != null
						&& castOther.getDescription() != null && this
						.getDescription().equals(castOther.getDescription())))
				&& ((this.getListOfChanges() == castOther.getListOfChanges()) || (this
						.getListOfChanges() != null
						&& castOther.getListOfChanges() != null && this
						.getListOfChanges()
						.equals(castOther.getListOfChanges())))
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
				&& ((this.getCreatedOn() == castOther.getCreatedOn()) || (this
						.getCreatedOn() != null
						&& castOther.getCreatedOn() != null && this
						.getCreatedOn().equals(castOther.getCreatedOn())))
				&& ((this.getLastModifiedOn() == castOther.getLastModifiedOn()) || (this
						.getLastModifiedOn() != null
						&& castOther.getLastModifiedOn() != null && this
						.getLastModifiedOn().equals(
								castOther.getLastModifiedOn())))
				&& ((this.getLastModifiedBy() == castOther.getLastModifiedBy()) || (this
						.getLastModifiedBy() != null
						&& castOther.getLastModifiedBy() != null && this
						.getLastModifiedBy().equals(
								castOther.getLastModifiedBy())))
				&& ((this.getVersion() == castOther.getVersion()) || (this
						.getVersion() != null && castOther.getVersion() != null && this
						.getVersion().equals(castOther.getVersion())));
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		int result = 17;

		result = 37
				* result
				+ (getCompVersionId() == null ? 0 : this.getCompVersionId()
						.hashCode());
		result = 37
				* result
				+ (getComponentId() == null ? 0 : this.getComponentId()
						.hashCode());
		result = 37
				* result
				+ (getDescription() == null ? 0 : this.getDescription()
						.hashCode());
		result = 37
				* result
				+ (getListOfChanges() == null ? 0 : this.getListOfChanges()
						.hashCode());
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
		result = 37 * result
				+ (getCreatedOn() == null ? 0 : this.getCreatedOn().hashCode());
		result = 37
				* result
				+ (getLastModifiedOn() == null ? 0 : this.getLastModifiedOn()
						.hashCode());
		result = 37
				* result
				+ (getLastModifiedBy() == null ? 0 : this.getLastModifiedBy()
						.hashCode());
		result = 37 * result
				+ (getVersion() == null ? 0 : this.getVersion().hashCode());
		return result;
	}

}