package com.hand.service;

import java.util.List;

import com.hand.po.Address;

public interface AddressService {
	List<Address> findAll();

	Address findById(int addressId);
}
