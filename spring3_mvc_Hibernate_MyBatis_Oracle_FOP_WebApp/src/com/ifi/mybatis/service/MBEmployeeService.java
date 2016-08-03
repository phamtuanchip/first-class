package com.ifi.mybatis.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dineshonjava.model.Employee;
import com.dineshonjava.service.EmployeeService;

/**
 * @author Chilvas
 *
 */
public interface MBEmployeeService {

	public void addEmployee(Employee employee) ;

	public List<Employee> listEmployeess();

	public Employee getEmployee(int empid) ;

	public void updateEmployee(Employee employee);

	public void deleteEmployee(Employee employee);
	
	 
}
