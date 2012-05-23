package com.mobisols.tollpayments.model;

import java.sql.Timestamp;
import java.util.Set;

// TODO: Auto-generated Javadoc
/**
 * The Class TpImportBatch.
 */
public class TpImportBatch implements java.io.Serializable{

	/** The tp import batch id. */
	private Integer tpImportBatchId;
	
	/** The batch type. */
	private String batchType;
	
	/** The status. */
	private String status;
	
	/** The processed on. */
	private Timestamp processedOn;
	
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
	
	/** The client id. */
	private Integer clientId;
	
	/** The tp import. */
	private Set<TpImport> tpImport;
	
	/**
	 * Instantiates a new tp import batch.
	 */
	public TpImportBatch() {
		
	}
	
	/**
	 * Gets the tp import batch id.
	 *
	 * @return the tp import batch id
	 */
	public Integer getTpImportBatchId() {
		return tpImportBatchId;
	}
	
	/**
	 * Sets the tp import batch id.
	 *
	 * @param tpImportBatchId the new tp import batch id
	 */
	public void setTpImportBatchId(Integer tpImportBatchId) {
		this.tpImportBatchId = tpImportBatchId;
	}
	
	/**
	 * Gets the batch type.
	 *
	 * @return the batch type
	 */
	public String getBatchType() {
		return batchType;
	}
	
	/**
	 * Sets the batch type.
	 *
	 * @param batchType the new batch type
	 */
	public void setBatchType(String batchType) {
		this.batchType = batchType;
	}
	
	/**
	 * Gets the status.
	 *
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}
	
	/**
	 * Sets the status.
	 *
	 * @param status the new status
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	
	/**
	 * Gets the processed on.
	 *
	 * @return the processed on
	 */
	public Timestamp getProcessedOn() {
		return processedOn;
	}
	
	/**
	 * Sets the processed on.
	 *
	 * @param processedOn the new processed on
	 */
	public void setProcessedOn(Timestamp processedOn) {
		this.processedOn = processedOn;
	}
	
	/**
	 * Gets the udf1.
	 *
	 * @return the udf1
	 */
	public String getUdf1() {
		return udf1;
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
		return udf2;
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
		return udf3;
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
		return udf4;
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
		return udf5;
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
		return flag1;
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
		return flag2;
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
		return flag3;
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
		return flag4;
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
		return flag5;
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
		return createdOn;
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
		return lastModifiedOn;
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
		return lastModifiedBy;
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
	 * Gets the client id.
	 *
	 * @return the client id
	 */
	public Integer getClientId() {
		return clientId;
	}
	
	/**
	 * Sets the client id.
	 *
	 * @param clientId the new client id
	 */
	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}
	
	/**
	 * Gets the tp import.
	 *
	 * @return the tp import
	 */
	public Set<TpImport> getTpImport() {
		return tpImport;
	}
	
	/**
	 * Sets the tp import.
	 *
	 * @param tpImport the new tp import
	 */
	public void setTpImport(Set<TpImport> tpImport) {
		this.tpImport = tpImport;
	}
	
}
