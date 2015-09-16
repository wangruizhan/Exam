package com.hand.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hand.dao.CustomerDao;
import com.hand.po.Customer;
import com.hand.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Resource
	private CustomerDao customerDao;
	
	public Customer finByLoginNameAndPassword(String name, String password) {
		return customerDao.finByLoginNameAndPassword(name, password);
	}

	public List<Customer> findAll() {
		return customerDao.findAll();
	}

	public Customer findById(int customer_id) {
		
		return customerDao.findById(customer_id);
	}

	public void delete(int customer_id) {
		customerDao.delete(customer_id);
	}

	public void save(Customer customer) {
		customerDao.save(customer);	
	}

	public void update(Customer customer) {
		customerDao.update(customer);
	}
	
}
