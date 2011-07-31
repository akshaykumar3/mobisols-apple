package com.mobisols.tollpayments.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.mobisols.tollpayments.dao.AccountDetailsDao;
import com.mobisols.tollpayments.model.User;

public class HibernateAccountDetailsDao extends HibernateDaoSupport implements AccountDetailsDao{

	@Override
	public User getAccountDetails(String userId) {
		User user = null;
		Criteria criteria = getHibernateTemplate().getSessionFactory().openSession().createCriteria(User.class);
		criteria.add(Restrictions.eq("userName", userId));
		List list = criteria.list();
		if (list != null && list.size() > 0) {
			user = (User) list.get(0);
		}
		return user;
	}
}
