package com.mobisols.tollpayments.webservice;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.TollLocation;
import com.mobisols.tollpayments.hibernate.TollOperator;

public class TollDetailsImpl {
	private String tollOperator;
	private String city;
	private String State;
	private String zip;
	private double latitude;
	private double longitude;

	public TollDetailsImpl(){
		
	}
	public TollDetailsImpl(int tollid) {
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(TollLocation.class);
		crit.add(Restrictions.eq("tollLocationId", tollid));
		List<TollLocation> tl=crit.list();
		if(tl.isEmpty())
			return;
		crit=s.createCriteria(TollOperator.class);
		crit.add(Restrictions.eq("tollOperatorId", tl.get(0).getTollOperatorId()));
		List<TollOperator> to=crit.list();
		if(to.isEmpty())
			return;
		this.setTollOperator(to.get(0).getName());
		this.setCity(tl.get(0).getCity());
		this.setState(tl.get(0).getState());
		this.setLatitude(tl.get(0).getLatitude());
		this.setLongitude(tl.get(0).getLongitude());
		this.setZip(tl.get(0).getZip());
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
}
