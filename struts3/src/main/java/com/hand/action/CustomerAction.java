package com.hand.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hand.po.Address;
import com.hand.po.Customer;
import com.hand.service.AddressService;
import com.hand.service.CustomerService;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sun.org.apache.regexp.internal.REUtil;

@Controller
@Scope("prototype")
public class CustomerAction extends ActionSupport implements ModelDriven<Customer> {

	@Resource
	private CustomerService customerService;
	@Resource
	private AddressService addressService;
	
	private int addressId;
	
	private Customer model = new Customer();

	public Customer getModel() {
		return model;
	}

	/** 登录页面 */
	public String loginUI() throws Exception {
		return "loginUI";
	}

	public String checkCustomer() throws Exception {
		Customer customer = customerService.finByLoginNameAndPassword(model.getFirst_name(), model.getLast_name());
		if(customer!=null)
			return "{data:success}";
		else
			return "{data:false}"; 
	}
	
	/** 登录 */
	public String login() throws Exception {
		Customer customer = customerService.finByLoginNameAndPassword(model.getFirst_name(), model.getLast_name());
		if (customer == null) {
			addFieldError("login", "用户名或者密码不正确！");
			return "loginUI";
		} else {
			// 登录用户
			ActionContext.getContext().getSession().put("customer", customer);
			return "toIndex";
		}
	}

	public String logout() throws Exception {
		ActionContext.getContext().getSession().remove("customer");
		return "logout";
	}

	/**
	 * 列表
	 * 
	 * @return
	 * @throws Exception
	 */
	public String list() throws Exception {
		List<Customer> customerList = customerService.findAll();
		ActionContext.getContext().put("customerList", customerList);
		return "list";
	}

	public String delete() throws Exception {
		Customer customer = customerService.findById(model.getCustomer_id());
		customerService.delete(model.getCustomer_id());
		return "toList";
	}

	public String add() throws Exception {
		model.setCreate_date(new Date());
		model.setLast_update(new Date());
		model.setStore_id(1);
		Address address = addressService.findById(addressId);
		model.setAddress(address);
		customerService.save(model);
		return "toList";
	}

	public String edit() throws Exception {
		Customer customer = customerService.findById(model.getCustomer_id());
		Address address = addressService.findById(addressId);
		customer.setCreate_date(new Date());
		customer.setFirst_name(model.getFirst_name());
		customer.setLast_name(model.getLast_name());
		customer.setEmail(model.getEmail());
		customer.setAddress(address);
		customerService.update(customer);
		return "toList";
	}

	public String saveUI() throws Exception {
		Customer customer = customerService.findById(model.getCustomer_id());
		addressId = customer.getAddress().getAddress_id();
		ActionContext.getContext().getValueStack().push(customer);
		
		List<Address> addresseList = addressService.findAll();
		ActionContext.getContext().put("addresseList", addresseList);
		return "saveUI";
	}
	public String addUI() throws Exception {
		List<Address> addresseList = addressService.findAll();
		ActionContext.getContext().put("addresseList", addresseList);
		return "saveUI";
	}
	

	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
}
