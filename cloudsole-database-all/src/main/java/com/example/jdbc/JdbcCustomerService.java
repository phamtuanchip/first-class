package com.example.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.model.Customer;
import com.example.service.CustomerService;

@Repository
@Transactional
@Qualifier("jdbcRepository")
public class JdbcCustomerService implements CustomerService{

	@Inject
    private JdbcTemplate jdbcTemplate;
	
	@Override
	public Customer updateCustomer(long id, String fn, String ln) {
		Customer updateCustomer = new Customer();
		updateCustomer.setId(id);
		updateCustomer.setFirstName(fn);
		updateCustomer.setLastName(ln);
		jdbcTemplate.update("", updateCustomer);
		return null;
	}

	@Override
	public List<Customer> updateCustomers(List<Customer> customersToUpdate) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public static final class CustomerMapper implements RowMapper<Customer>{
		@Override
		public Customer mapRow(ResultSet resultSet, int rowNum) throws SQLException {
			Customer customer = new Customer();
			customer.setId(resultSet.getLong("id"));
			customer.setFirstName(resultSet.getString("first_name"));
			customer.setLastName(resultSet.getString("last_name"));
			return customer;
		}
	}

	@Override
	public Customer getCustomerById(long id) {
		String sql = "Select * from customer where id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{id},new CustomerMapper());
	}

	@Override
	public Collection<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer createCustomer(String fn, String ln) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCustomer(long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Customer createCustomer(Customer newCustomer) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer updateCustomer(long id, Customer updateCustomer) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Customer> bulkCreate(List<Customer> customers) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Customer> findCustomerByQuery(String query) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCustomers(List<Customer> customerToDelete) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Customer> getPaginatedCustomer(Integer currentPage,
			Integer totalPerPage) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalRecords() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<String> getPaginationSequence() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createCustomersFromMap(Map<String, String> mapOfCustomers) {
		// TODO Auto-generated method stub
		
	}

}
