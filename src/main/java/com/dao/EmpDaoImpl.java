package com.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.EmpRegModel;
import com.model.LoginModel;

@Repository
public class EmpDaoImpl implements EmpDao {
	@Autowired
	SessionFactory sessionFactory;

	
	public void addEMP(EmpRegModel rm) {
		sessionFactory.getCurrentSession().save(rm);
	}

	public List<EmpRegModel> doLogin(LoginModel lm) {
		Session session=sessionFactory.getCurrentSession();
		String hql="From EmpRegModel E where E.loginid='"+lm.getLoginid()+"'and E.password='"+lm.getPassword()+"' ";
		Query query=session.createQuery(hql);
		List<EmpRegModel> list=query.list();
		List<EmpRegModel> list1=list.size()>0?list:null;
		return list1;
	}

	
	public List<EmpRegModel> getAllReg(String loginid) {
		Session session=sessionFactory.getCurrentSession();
		String hql="From EmpRegModel  E Where E.loginid!= :loginid ";
		Query query=session.createQuery(hql);
		query.setParameter("loginid", loginid);
		List<EmpRegModel> list=query.list();
		return list;
	}

}
