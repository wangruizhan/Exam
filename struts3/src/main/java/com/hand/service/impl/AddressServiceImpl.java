package com.hand.service.impl;

import java.security.KeyStore.PrivateKeyEntry;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hand.dao.AddressDao;
import com.hand.po.Address;
import com.hand.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {
	@Resource
	private AddressDao addressDao; 
	public List<Address> findAll(){
		return addressDao.findAll();
	}
	public Address findById(int addressId) {
		return addressDao.findById(addressId);
	}
}
