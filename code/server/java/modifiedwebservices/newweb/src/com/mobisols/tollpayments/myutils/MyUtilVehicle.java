package com.mobisols.tollpayments.myutils;

import java.util.Date;

public interface MyUtilVehicle {
	public boolean isValidRegistrationNumber(String regNo,String state);
	public boolean isValidEndDate(Date endDate);
}
