package com.mobisols.tollpayments.data;

import java.util.Iterator;
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
	
	public TollLocation getTollLocation(double lat,double longt){
		for(Iterator<TollLocation> it = this.tollLocation.iterator();it.hasNext();){
			TollLocation x = it.next();
			if(x.getLatitude()== lat &&
					x.getLongitude() == longt)
				return x;
		}
		return null;
	}
	
	public List<TollLocation> getList(){
		return tollLocation;
	}
	
	public void setList(List<TollLocation> l){
		this.tollLocation = l;
	}
}
