package com.hand.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hand.dao.AddressDao;
import com.hand.po.Address;
import com.hand.po.Customer;

@Repository
@Transactional
public class AddressDaoImpl implements AddressDao{
	
	@Resource
	private SessionFactory session;
	

	public List<Address> findAll() {
		return session.getCurrentSession().createQuery(
				"FROM Address")
				.list();
	}


	public Address findById(int addressId) {
		return (Address) session.getCurrentSession().get(Address.class, addressId);
	}

}
