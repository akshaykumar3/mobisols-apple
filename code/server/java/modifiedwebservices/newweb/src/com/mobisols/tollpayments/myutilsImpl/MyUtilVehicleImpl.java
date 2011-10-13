package com.mobisols.tollpayments.myutilsImpl;

import java.util.Date;
import java.util.HashMap;

import com.mobisols.tollpayments.myutils.MyUtilDate;
import com.mobisols.tollpayments.myutils.MyUtilVehicle;

public class MyUtilVehicleImpl implements MyUtilVehicle {

	private HashMap<String,String> regExpr;
	public MyUtilVehicleImpl()
	{
		regExpr = new HashMap<String,String>();
		regExpr.put("FL", "([A-X][0-9][0-9][ ][0-9][0-9][A-Z])|" +
				"([0-9][0-9][0-9][ ][H-Y][A-Z][A-Z])|" +
				"([A-Y][A-Z][A-z][ ][A-Z][0-9][0-9])");
		regExpr.put("TX", "[A-Z][A-Z][0-9]-[A-Z][0-9][0-9][0-9]");
		regExpr.put("CA","[0-9][A-Z][A-Z][A-Z][0-9][0-9][0-9]");
	}
	
	public boolean isValidRegistrationNumber(String regNo,String state)
	{
		if(regExpr.get(state)!=null)
			return regNo.matches(regExpr.get(state));
		else
			return true;
	}
	
	public boolean isValidEndDate(Date endDate)
	{
		MyUtilDate myUtilDate = new MyUtilDateImpl();
		if(endDate.compareTo(myUtilDate.getCurrentDate()) > 0)
			return true;
		else
			return false;
	}
}
