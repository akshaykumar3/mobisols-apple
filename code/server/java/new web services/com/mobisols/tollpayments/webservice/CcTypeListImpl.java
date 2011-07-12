package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.hibernate.entity.CcType;
import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.VehicleType;
@Path("/CcTypeList")

public class CcTypeListImpl implements CcTypeList {

	private List<UserCcTypeImpl> ccTypes;
	public CcTypeListImpl(){
		this.ccTypes = new LinkedList<UserCcTypeImpl>();
	}
	
	@GET
	public String getCcType() {
		Session s=HibernateSessionFactory.getSession();
		Criteria crit=s.createCriteria(CcType.class);
		List<CcType> ct=crit.list();
		CcTypeListImpl cti=new CcTypeListImpl();
		for(Iterator it=  ct.iterator();it.hasNext();)
		{
			cti.getCcTypes().add(new UserCcTypeImpl(((CcType) it.next()).getCcTypeId()));
		}
		for(Iterator it=cti.getCcTypes().iterator();it.hasNext();)
		{
			System.out.println(((UserCcType) it.next()).getName());
		}
		String request="";
		String status="";
		JsonConverter jc=new JsonConverterImpl();
		String res = jc.getJSON(request, status, cti);
		System.out.println(res);
		HibernateSessionFactory.closeSession();
		return res;
	}
	
	public void setCcTypes(List<UserCcTypeImpl> ccTypes) {
		this.ccTypes = ccTypes;
	}
	
	public List<UserCcTypeImpl> getCcTypes() {
		return ccTypes;
	}

}