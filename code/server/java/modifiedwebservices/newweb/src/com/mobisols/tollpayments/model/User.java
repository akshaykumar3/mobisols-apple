package com.mobisols.tollpayments.model;

import java.sql.Timestamp;
import java.util.Set;



// TODO: Auto-generated Javadoc
/**
 * UserId entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	/** The user id. */
	private Integer userId;
	
	/** The client id. */
	private Integer clientId;
	
	/** The utype id. */
	private Integer utypeId;
	
	/** The user name. */
	private String userName;
	
	/** The password. */
	private String password;
	
	/** The locale. */
	private String locale;
	
	/** The is active. */
	private String isActive;
	
	/** The contact no. */
	private String contactNo;
	
	/** The last login time. */
	private Timestamp lastLoginTime;
	
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
	
	/** The user balance. */
	private UserBalance userBalance;
	
	/** The user type. */
	private UserType userType;
	
	/** The user vehicles. */
	private Set<UserVehicle> userVehicles;
	
	/** The user payment details. */
	private UserPaymentDetail userPaymentDetails;
	
	// Constructors

	
	/**
	 * Gets the user payment details.
	 *
	 * @return the user payment details
	 */
	public UserPaymentDetail getUserPaymentDetails() {
		return userPaymentDetails;
	}

	/**
	 * Sets the user payment details.
	 *
	 * @param userPaymentDetails the new user payment details
	 */
	public void setUserPaymentDetails(UserPaymentDetail userPaymentDetails) {
		this.userPaymentDetails = userPaymentDetails;
	}

	/**
	 * Gets the user vehicles.
	 *
	 * @return the user vehicles
	 */
	public Set<UserVehicle> getUserVehicles() {
		return userVehicles;
	}

	/**
	 * Sets the user vehicles.
	 *
	 * @param userVehicles the new user vehicles
	 */
	public void setUserVehicles(Set<UserVehicle> userVehicles) {
		this.userVehicles = userVehicles;
	}

	/**
	 * Gets the user balance.
	 *
	 * @return the user balance
	 */
	public UserBalance getUserBalance() {
		return userBalance;
	}

	/**
	 * Sets the user balance.
	 *
	 * @param userBalance the new user balance
	 */
	public void setUserBalance(UserBalance userBalance) {
		this.userBalance = userBalance;
	}

	
	/**
	 * Gets the user type.
	 *
	 * @return the user type
	 */
	public UserType getUserType() {
		return userType;
	}

	/**
	 * Sets the user type.
	 *
	 * @param userType the new user type
	 */
	public void setUserType(UserType userType) {
		this.userType = userType;
	}


	/**
	 * default constructor.
	 */
	public User() {
	}

	/**
	 * minimal constructor.
	 *
	 * @param userId the user id
	 * @param clientId the client id
	 * @param utypeId the utype id
	 * @param userName the user name
	 * @param password the password
	 * @param isActive the is active
	 * @param createdOn the created on
	 * @param lastModifiedOn the last modified on
	 * @param lastModifiedBy the last modified by
	 */
	public User(Integer userId, Integer clientId, Integer utypeId,
			String userName, String password, String isActive,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Integer lastModifiedBy) {
		this.userId = userId;
		this.clientId = clientId;
		this.utypeId = utypeId;
		this.userName = userName;
		this.password = password;
		this.isActive = isActive;
		this.createdOn = createdOn;
		this.lastModifiedOn = lastModifiedOn;
		this.lastModifiedBy = lastModifiedBy;
	}

	/**
	 * full constructor.
	 *
	 * @param userId the user id
	 * @param clientId the client id
	 * @param utypeId the utype id
	 * @param userName the user name
	 * @param password the password
	 * @param locale the locale
	 * @param isActive the is active
	 * @param contactNo the contact no
	 * @param lastLoginTime the last login time
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
	 */
	public User(Integer userId, Integer clientId, Integer utypeId,
			String userName, String password, String locale, String isActive,
			String contactNo, Timestamp lastLoginTime, String udf1,
			String udf2, String udf3, String udf4, String udf5, String flag1,
			String flag2, String flag3, String flag4, String flag5,
			Timestamp createdOn, Timestamp lastModifiedOn,
			Integer lastModifiedBy) {
		this.userId = userId;
		this.clientId = clientId;
		this.utypeId = utypeId;
		this.userName = userName;
		this.password = password;
		this.locale = locale;
		this.isActive = isActive;
		this.contactNo = contactNo;
		this.lastLoginTime = lastLoginTime;
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
	}

	// Property accessors

	/**
	 * Gets the user id.
	 *
	 * @return the user id
	 */
	public Integer getUserId() {
		return this.userId;
	}

	/**
	 * Sets the user id.
	 *
	 * @param userId the new user id
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
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

	/**
	 * Gets the utype id.
	 *
	 * @return the utype id
	 */
	public Integer getUtypeId() {
	return this.utypeId;
	}

	/**
	 * Sets the utype id.
	 *
	 * @param utypeId the new utype id
	 */
	public void setUtypeId(Integer utypeId) {
		this.utypeId = utypeId;
	}

	/**
	 * Gets the user name.
	 *
	 * @return the user name
	 */
	public String getUserName() {
		return this.userName;
	}

	/**
	 * Sets the user name.
	 *
	 * @param userName the new user name
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * Gets the password.
	 *
	 * @return the password
	 */
	public String getPassword() {
		return this.password;
	}

	/**
	 * Sets the password.
	 *
	 * @param password the new password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * Gets the locale.
	 *
	 * @return the locale
	 */
	public String getLocale() {
		return this.locale;
	}

	/**
	 * Sets the locale.
	 *
	 * @param locale the new locale
	 */
	public void setLocale(String locale) {
		this.locale = locale;
	}

	/**
	 * Gets the checks if is active.
	 *
	 * @return the checks if is active
	 */
	public String getIsActive() {
		return this.isActive;
	}

	/**
	 * Sets the checks if is active.
	 *
	 * @param isActive the new checks if is active
	 */
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	/**
	 * Gets the contact no.
	 *
	 * @return the contact no
	 */
	public String getContactNo() {
		return this.contactNo;
	}

	/**
	 * Sets the contact no.
	 *
	 * @param contactNo the new contact no
	 */
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	/**
	 * Gets the last login time.
	 *
	 * @return the last login time
	 */
	public Timestamp getLastLoginTime() {
		return this.lastLoginTime;
	}

	/**
	 * Sets the last login time.
	 *
	 * @param lastLoginTime the new last login time
	 */
	public void setLastLoginTime(Timestamp lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
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

	/*public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof User))
			return false;
		User castOther = (User) other;

		return ((this.getUserId() == castOther.getUserId()) || (this
				.getUserId() != null && castOther.getUserId() != null && this
				.getUserId().equals(castOther.getUserId())))
				&& ((this.getClientId() == castOther.getClientId()) || (this
						.getClientId() != null
						&& castOther.getClientId() != null && this
						.getClientId().equals(castOther.getClientId())))
				&& ((this.getUtypeId() == castOther.getUtypeId()) || (this
						.getUtypeId() != null && castOther.getUtypeId() != null && this
						.getUtypeId().equals(castOther.getUtypeId())))
				&& ((this.getUserName() == castOther.getUserName()) || (this
						.getUserName() != null
						&& castOther.getUserName() != null && this
						.getUserName().equals(castOther.getUserName())))
				&& ((this.getPassword() == castOther.getPassword()) || (this
						.getPassword() != null
						&& castOther.getPassword() != null && this
						.getPassword().equals(castOther.getPassword())))
				&& ((this.getLocale() == castOther.getLocale()) || (this
						.getLocale() != null && castOther.getLocale() != null && this
						.getLocale().equals(castOther.getLocale())))
				&& ((this.getIsActive() == castOther.getIsActive()) || (this
						.getIsActive() != null
						&& castOther.getIsActive() != null && this
						.getIsActive().equals(castOther.getIsActive())))
				&& ((this.getContactNo() == castOther.getContactNo()) || (this
						.getContactNo() != null
						&& castOther.getContactNo() != null && this
						.getContactNo().equals(castOther.getContactNo())))
				&& ((this.getLastLoginTime() == castOther.getLastLoginTime()) || (this
						.getLastLoginTime() != null
						&& castOther.getLastLoginTime() != null && this
						.getLastLoginTime()
						.equals(castOther.getLastLoginTime())))
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
								castOther.getLastModifiedBy())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getUserId() == null ? 0 : this.getUserId().hashCode());
		result = 37 * result
				+ (getClientId() == null ? 0 : this.getClientId().hashCode());
		result = 37 * result
				+ (getUtypeId() == null ? 0 : this.getUtypeId().hashCode());
		result = 37 * result
				+ (getUserName() == null ? 0 : this.getUserName().hashCode());
		result = 37 * result
				+ (getPassword() == null ? 0 : this.getPassword().hashCode());
		result = 37 * result
				+ (getLocale() == null ? 0 : this.getLocale().hashCode());
		result = 37 * result
				+ (getIsActive() == null ? 0 : this.getIsActive().hashCode());
		result = 37 * result
				+ (getContactNo() == null ? 0 : this.getContactNo().hashCode());
		result = 37
				* result
				+ (getLastLoginTime() == null ? 0 : this.getLastLoginTime()
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
		return result;
	}
*/
}