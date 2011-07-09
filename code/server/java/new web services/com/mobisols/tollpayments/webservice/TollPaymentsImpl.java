package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.TollPrice;
import com.mobisols.tollpayments.hibernate.entity.UserVehicle;
import com.mobisols.tollpayments.hibernate.entity.VehicleTollUsage;


public class TollPaymentsImpl implements TollPayments{

	private String registration;
	private String state;
	private TollDetails tollDetails;
	private Double price;
	private Timestamp timeStamp;
	private String isPaid;
	
	public TollPaymentsImpl(){
		
	}
	public TollPaymentsImpl(int vtuId){
		Session s= HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(VehicleTollUsage.class);
		crit.add(Restrictions.eq("vtuId", vtuId));
		VehicleTollUsage vtu=(VehicleTollUsage) crit.uniqueResult();
		this.setRegistration(vtu.getUserVehicleHistory().getRegistrationNo());
		this.setState(vtu.getUserVehicleHistory().getRegisteredState());
		if(vtu.getPtranId()==-1)
			this.setIsPaid("false");
		else
			this.setIsPaid("true");
		this.setPrice(vtu.getTollPriceHistory().getCostPrice());
		this.setTimeStamp(vtu.getTimestamp());
		this.setTollDetails((TollDetails)new TollDetailsImpl(vtu.getTollLocId()));
	}
	public String getRegistration() {
		return registration;
	}
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public TollDetails getTollDetails() {
		return tollDetails;
	}
	public void setTollDetails(TollDetails tollDetails) {
		this.tollDetails = tollDetails;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(Double double1) {
		this.price = double1;
	}
	public Timestamp getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(Timestamp timestamp2) {
		this.timeStamp = timestamp2;
	}
	public String getIsPaid() {
		return isPaid;
	}
	public void setIsPaid(String isPaid) {
		this.isPaid = isPaid;
	}

}
