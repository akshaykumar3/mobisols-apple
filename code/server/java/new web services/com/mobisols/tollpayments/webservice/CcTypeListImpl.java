package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.ws.rs.GET;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.hibernate.CcType;
import com.mobisols.tollpayments.hibernate.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.VehicleType;

public class CcTypeListImpl implements CcTypeList {

	private List<UserCcType> ccTypes;
	public CcTypeListImpl(){
		this.ccTypes = new LinkedList<UserCcType>();
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
	
	public void setCcTypes(List<UserCcType> ccTypes) {
		this.ccTypes = ccTypes;
	}
	
	public List<UserCcType> getCcTypes() {
		return ccTypes;
	}

}