package com.mobisols.tollpayments.model;

import java.sql.Timestamp;

// TODO: Auto-generated Javadoc
/**
 * VehicleTollUsageId entity. @author MyEclipse Persistence Tools
 */

public class VehicleTollUsage implements java.io.Serializable {

	// Fields

	/** The vtu id. */
	private Integer vtuId;
	
	/** The uvh id. */
	private Integer uvhId;
	
	/** The toll loc id. */
	private Integer tollLocId;
	
	/** The tph id. */
	private Integer tphId;
	
	/** The timestamp. */
	private Timestamp timestamp;
	
	/** The vml id. */
	private Integer vmlId;
	
	/** The ptran id. */
	private Integer ptranId;
	
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
	
	/** The last modified by. */
	private Integer lastModifiedBy;
	
	/** The last modified on. */
	private Timestamp lastModifiedOn;
	
	/** The created on. */
	private Timestamp createdOn;
	
	/** The client id. */
	private Integer clientId;
	
	/** The payment transaction. */
	private PaymentTransaction paymentTransaction;
    
    /** The toll location. */
    private TollLocation tollLocation;
    
    /** The vehicle movement log. */
    private VehicleMovementLog vehicleMovementLog;
    
    /** The user vehicle history. */
    private UserVehicleHistory userVehicleHistory;
    
    /** The toll price history. */
    private TollPriceHistory tollPriceHistory;
    
    
	// Constructors

	/**
	 * default constructor.
	 */
	public VehicleTollUsage() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param vtuId the vtu id
	 * @param uvhId the uvh id
	 * @param tollLocId the toll loc id
	 * @param timestamp the timestamp
	 * @param vmlId the vml id
	 * @param lastModifiedBy the last modified by
	 * @param lastModifiedOn the last modified on
	 * @param createdOn the created on
	 */
	public VehicleTollUsage(Integer vtuId, Integer uvhId, Integer tollLocId,
			Timestamp timestamp, Integer vmlId, Integer lastModifiedBy,
			Timestamp lastModifiedOn, Timestamp createdOn) {
		this.vtuId = vtuId;
		this.uvhId = uvhId;
		this.tollLocId = tollLocId;
		this.timestamp = timestamp;
		this.vmlId = vmlId;
		this.lastModifiedBy = lastModifiedBy;
		this.lastModifiedOn = lastModifiedOn;
		this.createdOn = createdOn;
	}

	/**
	 * full constructor.
	 *
	 * @param vtuId the vtu id
	 * @param uvhId the uvh id
	 * @param tollLocId the toll loc id
	 * @param tphId the tph id
	 * @param timestamp the timestamp
	 * @param vmlId the vml id
	 * @param ptranId the ptran id
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
	 * @param lastModifiedBy the last modified by
	 * @param lastModifiedOn the last modified on
	 * @param createdOn the created on
	 * @param clientId the client id
	 */
	public VehicleTollUsage(Integer vtuId, Integer uvhId, Integer tollLocId,
			Integer tphId, Timestamp timestamp, Integer vmlId, Integer ptranId,
			String udf1, String udf2, String udf3, String udf4, String udf5,
			String flag1, String flag2, String flag3, String flag4,
			String flag5, Integer lastModifiedBy, Timestamp lastModifiedOn,
			Timestamp createdOn, Integer clientId) {
		this.vtuId = vtuId;
		this.uvhId = uvhId;
		this.tollLocId = tollLocId;
		this.tphId = tphId;
		this.timestamp = timestamp;
		this.vmlId = vmlId;
		this.ptranId = ptranId;
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
	
	

	/**
	 * Gets the vtu id.
	 *
	 * @return the vtu id
	 */
	public Integer getVtuId() {
		return this.vtuId;
	}

	/**
	 * Gets the payment transaction.
	 *
	 * @return the payment transaction
	 */
	public PaymentTransaction getPaymentTransaction() {
		return paymentTransaction;
	}

	/**
	 * Sets the payment transaction.
	 *
	 * @param paymentTransaction the new payment transaction
	 */
	public void setPaymentTransaction(PaymentTransaction paymentTransaction) {
		this.paymentTransaction = paymentTransaction;
	}

	/**
	 * Gets the toll location.
	 *
	 * @return the toll location
	 */
	public TollLocation getTollLocation() {
		return tollLocation;
	}

	/**
	 * Sets the toll location.
	 *
	 * @param tollLocation the new toll location
	 */
	public void setTollLocation(TollLocation tollLocation) {
		this.tollLocation = tollLocation;
	}

	/**
	 * Gets the vehicle movement log.
	 *
	 * @return the vehicle movement log
	 */
	public VehicleMovementLog getVehicleMovementLog() {
		return vehicleMovementLog;
	}

	/**
	 * Sets the vehicle movement log.
	 *
	 * @param vehicleMovementLog the new vehicle movement log
	 */
	public void setVehicleMovementLog(VehicleMovementLog vehicleMovementLog) {
		this.vehicleMovementLog = vehicleMovementLog;
	}

	/**
	 * Gets the user vehicle history.
	 *
	 * @return the user vehicle history
	 */
	public UserVehicleHistory getUserVehicleHistory() {
		return userVehicleHistory;
	}

	/**
	 * Sets the user vehicle history.
	 *
	 * @param userVehicleHistory the new user vehicle history
	 */
	public void setUserVehicleHistory(UserVehicleHistory userVehicleHistory) {
		this.userVehicleHistory = userVehicleHistory;
	}

	/**
	 * Gets the toll price history.
	 *
	 * @return the toll price history
	 */
	public TollPriceHistory getTollPriceHistory() {
		return tollPriceHistory;
	}

	/**
	 * Sets the toll price history.
	 *
	 * @param tollPriceHistory the new toll price history
	 */
	public void setTollPriceHistory(TollPriceHistory tollPriceHistory) {
		this.tollPriceHistory = tollPriceHistory;
	}

	/**
	 * Sets the vtu id.
	 *
	 * @param vtuId the new vtu id
	 */
	public void setVtuId(Integer vtuId) {
		this.vtuId = vtuId;
	}

	/**
	 * Gets the uvh id.
	 *
	 * @return the uvh id
	 */
	public Integer getUvhId() {
		return this.uvhId;
	}

	/**
	 * Sets the uvh id.
	 *
	 * @param uvhId the new uvh id
	 */
	public void setUvhId(Integer uvhId) {
		this.uvhId = uvhId;
	}

	/**
	 * Gets the toll loc id.
	 *
	 * @return the toll loc id
	 */
	public Integer getTollLocId() {
		return this.tollLocId;
	}

	/**
	 * Sets the toll loc id.
	 *
	 * @param tollLocId the new toll loc id
	 */
	public void setTollLocId(Integer tollLocId) {
		this.tollLocId = tollLocId;
	}

	/**
	 * Gets the tph id.
	 *
	 * @return the tph id
	 */
	public Integer getTphId() {
		return this.tphId;
	}

	/**
	 * Sets the tph id.
	 *
	 * @param tphId the new tph id
	 */
	public void setTphId(Integer tphId) {
		this.tphId = tphId;
	}

	/**
	 * Gets the timestamp.
	 *
	 * @return the timestamp
	 */
	public Timestamp getTimestamp() {
		return this.timestamp;
	}

	/**
	 * Sets the timestamp.
	 *
	 * @param timestamp the new timestamp
	 */
	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	/**
	 * Gets the vml id.
	 *
	 * @return the vml id
	 */
	public Integer getVmlId() {
		return this.vmlId;
	}

	/**
	 * Sets the vml id.
	 *
	 * @param vmlId the new vml id
	 */
	public void setVmlId(Integer vmlId) {
		this.vmlId = vmlId;
	}

	/**
	 * Gets the ptran id.
	 *
	 * @return the ptran id
	 */
	public Integer getPtranId() {
		return this.ptranId;
	}

	/**
	 * Sets the ptran id.
	 *
	 * @param ptranId the new ptran id
	 */
	public void setPtranId(Integer ptranId) {
		this.ptranId = ptranId;
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
	 * Gets the client id.
	 *
	 * @return the client id
	 */
	public Integer getClientId() {
		return this.clientId;
	}

	/**
	 * Sets the client id.
	 *
	 * @param clientId the new client id
	 */
	public void setClientId(Integer clientId) {
		this.clientId = clientId;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof VehicleTollUsage))
			return false;
		VehicleTollUsage castOther = (VehicleTollUsage) other;

		return ((this.getVtuId() == castOther.getVtuId()) || (this.getVtuId() != null
				&& castOther.getVtuId() != null && this.getVtuId().equals(
				castOther.getVtuId())))
				&& ((this.getUvhId() == castOther.getUvhId()) || (this
						.getUvhId() != null && castOther.getUvhId() != null && this
						.getUvhId().equals(castOther.getUvhId())))
				&& ((this.getTollLocId() == castOther.getTollLocId()) || (this
						.getTollLocId() != null
						&& castOther.getTollLocId() != null && this
						.getTollLocId().equals(castOther.getTollLocId())))
				&& ((this.getTphId() == castOther.getTphId()) || (this
						.getTphId() != null && castOther.getTphId() != null && this
						.getTphId().equals(castOther.getTphId())))
				&& ((this.getTimestamp() == castOther.getTimestamp()) || (this
						.getTimestamp() != null
						&& castOther.getTimestamp() != null && this
						.getTimestamp().equals(castOther.getTimestamp())))
				&& ((this.getVmlId() == castOther.getVmlId()) || (this
						.getVmlId() != null && castOther.getVmlId() != null && this
						.getVmlId().equals(castOther.getVmlId())))
				&& ((this.getPtranId() == castOther.getPtranId()) || (this
						.getPtranId() != null && castOther.getPtranId() != null && this
						.getPtranId().equals(castOther.getPtranId())))
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

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getVtuId() == null ? 0 : this.getVtuId().hashCode());
		result = 37 * result
				+ (getUvhId() == null ? 0 : this.getUvhId().hashCode());
		result = 37 * result
				+ (getTollLocId() == null ? 0 : this.getTollLocId().hashCode());
		result = 37 * result
				+ (getTphId() == null ? 0 : this.getTphId().hashCode());
		result = 37 * result
				+ (getTimestamp() == null ? 0 : this.getTimestamp().hashCode());
		result = 37 * result
				+ (getVmlId() == null ? 0 : this.getVmlId().hashCode());
		result = 37 * result
				+ (getPtranId() == null ? 0 : this.getPtranId().hashCode());
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