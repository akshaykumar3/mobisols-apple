package com.mobisols.tollpayments.webservice;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mobisols.tollpayments.hibernate.entity.HibernateSessionFactory;
import com.mobisols.tollpayments.hibernate.entity.OwnerType;

@Path("/OwnerTypesList")
public class OwnerTypeListImpl implements OwnerTypeList{
		private List<OwnerTypeImpl> ownerTypes;
		public OwnerTypeListImpl(){
			this.ownerTypes = new LinkedList<OwnerTypeImpl>();
		}
		
		@GET
		public String getOwnerType() {
			Session s=HibernateSessionFactory.getSession();
			Criteria crit=s.createCriteria(OwnerType.class);
			List<OwnerType> ot=crit.list();
			OwnerTypeListImpl oti=new OwnerTypeListImpl();
			for(Iterator it=  ot.iterator();it.hasNext();)
			{
				oti.getOwnerTypes().add(new OwnerTypeImpl(((OwnerType) it.next()).getOwnerTypeId()));
			}
			for(Iterator it=oti.getOwnerTypes().iterator();it.hasNext();)
			{
				System.out.println(((UserOwnerType) it.next()).getName());
			}
			String request="";
			String status="";
			JsonConverter jc=new JsonConverterImpl();
			String res = jc.getJSON(request, status, oti);
			System.out.println(res);
			HibernateSessionFactory.closeSession();
			return res;
		}
		
		public void setOwnerTypes(List<OwnerTypeImpl> ownerTypes) {
			this.ownerTypes = ownerTypes;
		}
		
		public List<OwnerTypeImpl> getOwnerTypes() {
			return ownerTypes;
		}

	}

	
	

