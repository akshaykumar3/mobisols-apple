package com.mobisols.tollpayments.webservice;

import java.sql.Timestamp;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.TollPrice;
import com.mobisols.tollpayments.hibernate.UserVehicle;
import com.mobisols.tollpayments.hibernate.VehicleTollUsage;


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
		List<VehicleTollUsage> vtu=crit.list();
		if(vtu.isEmpty())
			return;
		crit=s.createCriteria(UserVehicle.class);
		crit.add(Restrictions.eq("userVehicleId", vtu.get(0).getUvhId()));
		List<UserVehicle> uv=crit.list();
		if(uv.isEmpty())
			return;
		this.setRegistration(uv.get(0).getRegistrationNo());
		this.setState(uv.get(0).getRegisteredState());
		if(vtu.get(0).getPtranId()==-1)
			this.setIsPaid("false");
		else
			this.setIsPaid("true");
		
		crit=s.createCriteria(TollPrice.class);
		crit.add(Restrictions.eq("tollLocationId", vtu.get(0).getTollLocId()));
		crit.add(Restrictions.eq("vehicleTypeId", uv.get(0).getVehicleTypeId()));
		List<TollPrice> tp=crit.list();
		if(tp.isEmpty())
			return;
		this.setPrice(tp.get(0).getCostPrice());
		this.setTimeStamp(vtu.get(0).getTimestamp());
		this.setTollDetails((TollDetails)new TollDetailsImpl(vtu.get(0).getTollLocId()));
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