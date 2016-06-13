/*
 * Created on 3 avr. 2014 ( Time 19:39:42 )
 * Generated by Telosys Tools Generator ( version 2.1.0 )
 */
package org.demo.business.service.mapping;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.stereotype.Component;
import org.demo.bean.Customer;
import org.demo.bean.jpa.CustomerEntity;
import org.demo.bean.jpa.CountryEntity;

/**
 * Mapping between entity beans and display beans.
 */
@Component
public class CustomerServiceMapper extends AbstractServiceMapper {

	/**
	 * ModelMapper : bean to bean mapping library.
	 */
	private ModelMapper modelMapper;
	
	/**
	 * Constructor.
	 */
	public CustomerServiceMapper() {
		modelMapper = new ModelMapper();
		modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
	}

	/**
	 * Mapping from 'CustomerEntity' to 'Customer'
	 * @param customerEntity
	 */
	public Customer mapCustomerEntityToCustomer(CustomerEntity customerEntity) {
		if(customerEntity == null) {
			return null;
		}

		//--- Generic mapping 
		Customer customer = map(customerEntity, Customer.class);

		//--- Link mapping ( link to Country )
		if(customerEntity.getCountry() != null) {
			customer.setCountryCode(customerEntity.getCountry().getCode());
		}
		return customer;
	}
	
	/**
	 * Mapping from 'Customer' to 'CustomerEntity'
	 * @param customer
	 * @param customerEntity
	 */
	public void mapCustomerToCustomerEntity(Customer customer, CustomerEntity customerEntity) {
		if(customer == null) {
			return;
		}

		//--- Generic mapping 
		map(customer, customerEntity);

		//--- Link mapping ( link : customer )
		if( hasLinkToCountry(customer) ) {
			CountryEntity country1 = new CountryEntity();
			country1.setCode( customer.getCountryCode() );
			customerEntity.setCountry( country1 );
		} else {
			customerEntity.setCountry( null );
		}

	}
	
	/**
	 * Verify that Country id is valid.
	 * @param Country Country
	 * @return boolean
	 */
	private boolean hasLinkToCountry(Customer customer) {
		if(customer.getCountryCode() != null) {
			return true;
		}
		return false;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected ModelMapper getModelMapper() {
		return modelMapper;
	}

	protected void setModelMapper(ModelMapper modelMapper) {
		this.modelMapper = modelMapper;
	}

}