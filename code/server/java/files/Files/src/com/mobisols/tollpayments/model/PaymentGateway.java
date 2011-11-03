package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

public class PaymentGateway {
	private Integer paymentGatewayId;
	private String name;
	private String paymentClass;
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

	public PaymentGateway(){
		
	}

	public Integer getPaymentGatewayId() {
		return paymentGatewayId;
	}

	public void setPaymentGatewayId(Integer paymentGatewayId) {
		this.paymentGatewayId = paymentGatewayId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPaymentClass() {
		return paymentClass;
	}

	public void setPaymentClass(String paymentClass) {
		this.paymentClass = paymentClass;
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
}
