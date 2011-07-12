package com.mobisols.tollpayments.webservice;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.TollLocation;

public class TollDetailsImpl implements TollDetails{
	private String tollOperator;
	private String city;
	private String State;
	private String zip;
	private double latitude;
	private double longitude;
	private String isCovered;
	
	
	public TollDetailsImpl(){
		
	}
	public TollDetailsImpl(int tollid) {
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(TollLocation.class);
		crit.add(Restrictions.eq("tollLocationId", tollid));
		TollLocation tl=(TollLocation) crit.uniqueResult();
		if(tl!=null)
		{
			this.setTollOperator(tl.getTollOperator().getName());
			this.setCity(tl.getCity());
			this.setState(tl.getState());
			this.setLatitude(tl.getLatitude());
			this.setLongitude(tl.getLongitude());
			this.setZip(tl.getZip());
			this.setIsCovered(tl.getIsCovered());
		}
	}
	public String getTollOperator() {
		return tollOperator;
	}
	public void setTollOperator(String tollOperator) {
		this.tollOperator = tollOperator;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public String getIsCovered() {
		return isCovered;
	}
	public void setIsCovered(String isCovered) {
		this.isCovered = isCovered;
	}
}
