package com.hand.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hand.dao.CustomerDao;
import com.hand.po.Address;
import com.hand.po.Customer;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
	@Resource
	private SessionFactory session;
	
	public Customer finByLoginNameAndPassword(String name, String password) {
		return (Customer) session.getCurrentSession().createQuery( 
				"from Customer u where u.first_name=? ") 
				.setParameter(0, name) 
				.uniqueResult();
	}

	public List<Customer> findAll() {
		return session.getCurrentSession().createQuery(
				"FROM Customer order by id desc")
				.list();
	}

	public Customer findById(int customer_id) {
		return (Customer) session.getCurrentSession().get(Customer.class, customer_id);
	}

	public void delete(int customer_id) {
		Customer customer = findById(customer_id);
		session.getCurrentSession().delete(customer);
	}

	public void save(Customer customer) {
		session.getCurrentSession().save(customer);
	}

	public void update(Customer customer) {
		 session.getCurrentSession().update(customer);
	}
	
}
