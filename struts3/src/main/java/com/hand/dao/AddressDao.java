package com.hand.dao;

import java.util.List;

import com.hand.po.Address;

public interface AddressDao {

	List<Address> findAll();

	Address findById(int addressId);

}
