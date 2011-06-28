package com.mobisols.tollpayments.webservice;

import java.util.LinkedList;
import java.util.List;

import javassist.bytecode.Descriptor.Iterator;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.VehicleType;

@Path("/VehicleTypeList")
public class VehicleTypeListImpl implements VehicleTypeList {
	private List<UserVehicleType> vehicleTypes;
	public VehicleTypeListImpl(){
		this.vehicleTypes = new LinkedList<UserVehicleType>();
	}
	
	@GET
	public String getVehicleType(@QueryParam("client_id")int clientId) {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(VehicleType.class);
		crit.add(Restrictions.eq("client_id", clientId));
		List<VehicleType> vt=crit.list();
		VehicleTypeListImpl vti=new VehicleTypeListImpl();
		for(Iterator it=  (Iterator) vt.iterator();it.hasNext();)
		{
			vti.getVehicleTypes().add(new UserVehicleTypeImpl(vt.get(it.next()).getId().getVehicleTypeId()));
		}
		String request="";
		String status="";
		JsonConverter jc=new JsonConverterImpl();
		String res = jc.getJSON(request, status, vti);
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
