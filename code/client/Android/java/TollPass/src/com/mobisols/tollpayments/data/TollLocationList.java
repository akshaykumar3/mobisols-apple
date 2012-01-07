package com.mobisols.tollpayments.data;

import java.util.LinkedList;
import java.util.List;

public class TollLocationList {
	
	private static TollLocationList tollLocationList;
	private List<TollLocation> tollLocation;
	
	private TollLocationList()
	{
		tollLocation = new LinkedList<TollLocation>();
	}
	
	public static TollLocationList getInstace(){
		if(tollLocationList == null)
		{
			tollLocationList = new TollLocationList();
		}
		return tollLocationList;
	}
	
	public List<TollLocation> getList(){
		return tollLocation;
	}
	
	public void setList(List<TollLocation> l){
		this.tollLocation = l;
	}
}
