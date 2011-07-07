package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.VehicleType;

@Path("/VehicleTypeList")
public class VehicleTypeListImpl implements VehicleTypeList {
	private List<UserVehicleType> vehicleTypes;
	public VehicleTypeListImpl(){
		this.vehicleTypes = new LinkedList<UserVehicleType>();
	}
	
	@GET
	public String getVehicleType() {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(VehicleType.class);
		List<VehicleType> vt=crit.list();
		VehicleTypeListImpl vti=new VehicleTypeListImpl();
		for(Iterator it=  vt.iterator();it.hasNext();)
		{
			vti.getVehicleTypes().add(new UserVehicleTypeImpl(((VehicleType) it.next()).getVehicleTypeId()));
		}
		for(Iterator it=vti.getVehicleTypes().iterator();it.hasNext();)
		{
			System.out.println(((UserVehicleType) it.next()).getName());
		}
		String request="";
		String status="";
		JsonConverter jc=new JsonConverterImpl();
		String res = jc.getJSON(request, status, vti);
		System.out.println(res);
		HibernateSessionFactory.closeSession();
		return res;
	}
	
	public void setVehicleTypes(List<UserVehicleType> vehicleTypes) {
		this.vehicleTypes = vehicleTypes;
	}
	
	public List<UserVehicleType> getVehicleTypes() {
		return vehicleTypes;
	}

}
