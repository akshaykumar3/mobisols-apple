package com.mobisols.tollpayments.myutilsImpl;

import java.util.HashMap;

import com.mobisols.tollpayments.myutils.MyUtilVehicle;

public class MyUtilVehicleImpl implements MyUtilVehicle {

	private HashMap<String,String> regExpr;
	public MyUtilVehicleImpl()
	{
		regExpr = new HashMap<String,String>();
		regExpr.put("Florida", "([A-X][0-9][0-9][ ][0-9][0-9][A-Z])|" +
				"([0-9][0-9][0-9][ ][H-Y][A-Z][A-Z])|" +
				"([A-Y][A-Z][A-z][ ][A-Z][0-9][0-9])");
		regExpr.put("Texas", "[A-Z][A-Z][0-9]-[A-Z][0-9][0-9][0-9]");
		regExpr.put("California","[0-9][A-Z][A-Z][A-Z][0-9][0-9][0-9]");
	}
	
	public boolean isValidRegistrationNumber(String regNo,String state)
	{
		return regNo.matches(regExpr.get(state));
	}
}
