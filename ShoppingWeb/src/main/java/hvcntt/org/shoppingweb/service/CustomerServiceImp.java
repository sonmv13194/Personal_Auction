package hvcntt.org.shoppingweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hvcntt.org.shoppingweb.model.Customer;
import hvcntt.org.shoppingweb.repository.CustomerRepository;

@Service
public class CustomerServiceImp implements CustomerService {
	@Autowired
	CustomerRepository customerrepo;
	@Override
	public List<Customer> getAll() {
		// TODO Auto-generated method stub
		return customerrepo.findAll();
	}
	@Override
	public Customer create(Customer customer) {
		// TODO Auto-generated method stub
		return customerrepo.save(customer);
	}
	@Override
	public Customer findByName(String firstname, String lastname) {
		// TODO Auto-generated method stub
		return customerrepo.findByFirstnameAndLastname(firstname, lastname);
	}
	@Override
	public List<Customer> findByLastname(String lastname) {
		// TODO Auto-generated method stub
		return customerrepo.findByLastname(lastname);
	}
	

}
