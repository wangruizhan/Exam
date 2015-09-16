package com.hand.service;

import java.util.List;

import com.hand.po.Customer;

public interface CustomerService {
	Customer finByLoginNameAndPassword(String name, String password) ;

	List<Customer> findAll();

	Customer findById(int customer_id);

	void delete(int customer_id);

	void save(Customer customer);

	void update(Customer customer);
}
