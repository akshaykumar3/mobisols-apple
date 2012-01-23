package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

public class TpImport implements java.io.Serializable{
	private Integer tpImportId;
	private Integer batchId;
	private Integer batchRecordNumber;
	private String fd1;
	private String fd2;
	private String fd3;
	private String fd4;
	private String fd5;
	private String fd6;
	private String fd7;
	private String fd8;
	private String fd9;
	private String fd10;
	private String status;
	private String message;
	private Timestamp processedOn;
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
	private Integer lastModifiedBy;
	private Integer clientId;
	
	private TpImportBatch tpImportBatch;
	
	public TpImport(){
		
	}
	
	public Integer getTpImportId() {
		return tpImportId;
	}
	public void setTpImportId(Integer tpImportId) {
		this.tpImportId = tpImportId;
	}
	public Integer getBatchId() {
		return batchId;
	}
	public void setBatchId(Integer batchId) {
		this.batchId = batchId;
	}
	public Integer getBatchRecordNumber() {
		return batchRecordNumber;
	}
	public void setBatchRecordNumber(Integer batchRecordNumber) {
		this.batchRecordNumber = batchRecordNumber;
	}
	public String getFd1() {
		return fd1;
	}
	public void setFd1(String fd1) {
		this.fd1 = fd1;
	}
	public String getFd2() {
		return fd2;
	}
	public void setFd2(String fd2) {
		this.fd2 = fd2;
	}
	public String getFd3() {
		return fd3;
	}
	public void setFd3(String fd3) {
		this.fd3 = fd3;
	}
	public String getFd4() {
		return fd4;
	}
	public void setFd4(String fd4) {
		this.fd4 = fd4;
	}
	public String getFd5() {
		return fd5;
	}
	public void setFd5(String fd5) {
		this.fd5 = fd5;
	}
	public String getFd6() {
		return fd6;
	}
	public void setFd6(String fd6) {
		this.fd6 = fd6;
	}
	public String getFd7() {
		return fd7;
	}
	public void setFd7(String fd7) {
		this.fd7 = fd7;
	}
	public String getFd8() {
		return fd8;
	}
	public void setFd8(String fd8) {
		this.fd8 = fd8;
	}
	public String getFd9() {
		return fd9;
	}
	public void setFd9(String fd9) {
		this.fd9 = fd9;
	}
	public String getFd10() {
		return fd10;
	}
	public void setFd10(String fd10) {
		this.fd10 = fd10;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getProcessedOn() {
		return processedOn;
	}
	public void setProcessedOn(Timestamp processedOn) {
		this.processedOn = processedOn;
	}
	public String getUdf1() {
		return udf1;
	}
	public void setUdf1(String udf1) {
		this.udf1 = udf1;
	}
	public String getUdf2() {
		return udf2;
	}
	public void setUdf2(String udf2) {
		this.udf2 = udf2;
	}
	public String getUdf3() {
		return udf3;
	}
	public void setUdf3(String udf3) {
		this.udf3 = udf3;
	}
	public String getUdf4() {
		return udf4;
	}
	public void setUdf4(String udf4) {
		this.udf4 = udf4;
	}
	public String getUdf5() {
		return udf5;
	}
	public void setUdf5(String udf5) {
		this.udf5 = udf5;
	}
	public String getFlag1() {
		return flag1;
	}
	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}
	public String getFlag2() {
		return flag2;
	}
	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}
	public String getFlag3() {
		return flag3;
	}
	public void setFlag3(String flag3) {
		this.flag3 = flag3;
	}
	public String getFlag4() {
		return flag4;
	}
	public void setFlag4(String flag4) {
		this.flag4 = flag4;
	}
	public String getFlag5() {
		return flag5;
	}
	public void setFlag5(String flag5) {
		this.flag5 = flag5;
	}
	public Timestamp getCreatedOn() {
		return createdOn;
	}
	public void setCreatedOn(Timestamp createdOn) {
		this.createdOn = createdOn;
	}
	public Timestamp getLastModifiedOn() {
		return lastModifiedOn;
	}
	public void setLastModifiedOn(Timestamp lastModifiedOn) {
		this.lastModifiedOn = lastModifiedOn;
	}
	public Integer getLastModifiedBy() {
		return lastModifiedBy;
	}
	public void setLastModifiedBy(Integer lastModifiedBy) {
		this.lastModifiedBy = lastModifiedBy;
	}
	public Integer getClientId() {
		return clientId;
	}
	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	public TpImportBatch getTpImportBatch() {
		return tpImportBatch;
	}

	public void setTpImportBatch(TpImportBatch tpImportBatch) {
		this.tpImportBatch = tpImportBatch;
	}
	
	
}
