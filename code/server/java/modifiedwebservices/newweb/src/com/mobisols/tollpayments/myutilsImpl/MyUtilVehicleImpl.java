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
		regExpr.put("AL","([0-9][A-Z][0-9]{2}[A-Z][0-9]{2})|"+"([0-9]{2}[A-Z][0-9]{2}[A-Z][0-9])|"+"(A[A-Z][0-9]{5})|"+"([0-9]{5}A[A-Z])");

		regExpr.put("AK","([A-Z]{3}[0-9]{3})");

		regExpr.put("American Samoa","([0-9]{4})");

		regExpr.put("AZ","([A-Z]{3}[0-9]{4})");

		regExpr.put("AR","([0-9]{3}[ ][A-Z]{3})");

		regExpr.put("CA","([0-9][A-Z]{3}[0-9]{3})");

		regExpr.put("CO","([0-9]{3}[-][A-Z]{3})");

		regExpr.put("CT","([0-9]{3}[.][A-Z]{3})");

		regExpr.put("DE","([0-9]{1,})");

		regExpr.put("DC","([A-Z]{2}[-][0-9]{4})");

		regExpr.put("FL","([A-X]{0-9]{2}[ ][0-9][A-Z]{2})|"+"([0-9]{3}[ ][H-Y][A-Z]{2})|"+"([A-Y][A-Z]{2}[ ][A-Z[0-9]{2})|"+"([0-9]{3}[ ][0-9](G|H)[A-Z])");

		regExpr.put("GA","([A-Z]{3}[ ][0-9]{4})");

		regExpr.put("Guam","([A-Z]{2}[ ][0-9]{4})");

		regExpr.put("HI","((([A-G]|J|N|P|[R-Z])|(H|K|M))[A-Z]{2}[ ][0-9]{3})");

		regExpr.put("ID","([A-Z][ ][0-9]{1,})|"+"([0-9][A-Z][ ][0-9]{1,})|"+"([0-9][A-Z][ ][A-Z][0-9]{1,})|"+"([0-9][A-Z][ ][A-Z]{2}[0-9]{1,})");

		regExpr.put("IL","([A-Z][0-9]{2}[ ][0-9]{4})");

		regExpr.put("IN","([0-9]{3}[A-Z]{1,3})|"+"([0-9]{4})");

		regExpr.put("IA","([0-9]{3}[ ][A-Z]{3})");

		regExpr.put("KS","([0-9]{3}[ ][A-Z]{3})");

		regExpr.put("KY","([0-9]{3}[ ][A-Z]{3})");

		regExpr.put("LA","([A-Z]{3}[ ][0-9]{3})");

		regExpr.put("ME","([0-9]{4}[ ][A-Z]{2})");

		regExpr.put("MD","([0-9][A-Z]{2}[ ][A-Z][0-9]{2})|"+"([0-9][A-Z][/][A-Z][0-9]{4})");

		regExpr.put("MA","([0-9]{3}[ ][A-Z]{2}[0-9])|"+"([0-9][A-Z]{2}[ ][0-9]{2}o)");

		regExpr.put("MI","([A-Z]{3}[ ][0-9]{4})");

		regExpr.put("MN","([0-9]{3}[-][A-Z]{3})");

		regExpr.put("MS","([A-Z]{3}[ ][0-9]{3})");

		regExpr.put("MO","([A-Z]{2}[0-9][ ][A-Z][0-9][A-Z])");

		regExpr.put("MT","([0-9][-][0-9]{1,}[A-Z])");

		regExpr.put("NE","([A-Z]{3}[ ][0-9]{3})|"+"([0-9][-][A-Z][0-9]{1,})|"+"([0-9][-][A-Z]{2}[0-9]{1,})|"+"([0-9]{2}[-][A-Z][0-9]{3})|"+"([0-9]{2}[-][A-Z]{2}[0-9]{2})");

		regExpr.put("NH","([0-9]{3}[ ][0-9]{4})");

		regExpr.put("NJ","([A-Z][0-9][0-9][-][A-Z]{3}|"+"[A-Z]{3}[-][A-Z][0-9][0-9]");

		regExpr.put("NM","([0-9]{3}[-][A-Z]{3})|"+"([A-Z]{3}[-][0-9]{3})");

		regExpr.put("NY","([A-Z]{3}[-][0-9]{4})");

		regExpr.put("NC","([A-Z]{3}[-][0-9]{4})");

		regExpr.put("ND","([A-Z]{3}[ ][0-9]{3})");

		regExpr.put("Morthern Mariana Islands","([A-Z]{3}[ ][0-9]{3})");

		regExpr.put("OH","([A-Z]{3}[ ][0-9]{4})");

		regExpr.put("OK","([0-9]{3}[A-Z]{3})");

		regExpr.put("OR","([0-9]{3}[ ][A-Z]{3})");

		regExpr.put("PA","([A-Z][-][0-9]{4})");

		regExpr.put("Puerto Rico","([A-Z]{3}([-]|[ ])[0-9]{3})");

		regExpr.put("RI","([A-Z]{2}[-][0-9]{3})|"+"([0-9]{3}[-][0-9]{3})|"+"([0-9]{5})");

		regExpr.put("SC","([A-Z]{3}[ ][0-9]{3})|"+"([0-9]{3}[ ][0-9][A-Z]{2})");

		regExpr.put("SD","([0-9][A-Z]{2}[ ][0-9]{3})|"+"([0-9]{2}[A-Z][ ][0-9]{3})|"+"([0-9]{2}[A-Z][ ][A-Z][0-9]{2})|"+"([0-9]{2}[A-Z][ ][A-Z]{2}[0-9])");

		regExpr.put("TN","([0-9]{3}[-][A-Z]{3})");

		regExpr.put("TX","([A-Z]{2}[0-9][-][A-Z][0-9]{3})");

		regExpr.put("UT","([A-Z][0-9]{2}[ ][0-9][A-Z]{2})");

		regExpr.put("VT","([A-Z]{3}[ ][0-9]{3})");

		regExpr.put("U.S. Virgin Islands","([A-Z]{3}[ ][0-9]{3})");

		regExpr.put("VA","([A-Z]{3}[-][0-9]{4})");

		regExpr.put("WA","([0-9]{3}[ ][A-Z]{3})");

		regExpr.put("WV","([0-9][A-Z]{2}[ ][0-9]{3})");

		regExpr.put("WI","([0-9]{3}[-][A-Z]{3})");

		regExpr.put("WY","([0-9][-][0-9]{1,})|"+"([0-9]{2}[-][0-9]{1,})");

	}
	
	public boolean isValidRegistrationNumber(String regNo,String state)
	{
		/*if(regExpr.get(state)!=null)
			return regNo.toUpperCase().matches(regExpr.get(state));
		else
			return true;*/
		return true;
	}
	
	public boolean isValidEndDate(Date endDate)
	{
		MyUtilDate myUtilDate = new MyUtilDateImpl();
		if(endDate!=null && endDate.compareTo(myUtilDate.getCurrentDate()) > 0)
			return true;
		else if(endDate==null)
			return true;
		else
			return false;
	}
}
