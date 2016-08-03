package com.dineshonjava.service;

import java.util.List;

import com.dineshonjava.model.Employee;

/**
 * @author Chilvas
 *
 */
public interface EmployeeService {
	
	public void addEmployee(Employee employee);

	public List<Employee> listEmployeess();
	
	public Employee getEmployee(int empid);
	
	public void updateEmployee(Employee employee);
	
	public void deleteEmployee(Employee employee);
}
