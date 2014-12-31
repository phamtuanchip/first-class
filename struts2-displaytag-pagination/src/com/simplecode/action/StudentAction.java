package com.simplecode.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.simplecode.form.StudentBean;

public class StudentAction extends ActionSupport 
{
private static final long serialVersionUID = 1L;

private List<StudentBean> students = new ArrayList<StudentBean>();

public String fetchStudentList() 
{

students.add(new StudentBean("o7bb002", "Ajay", "ECE", 94));
students.add(new StudentBean("o7bc055", "Mohiadeen", "CSE", 89));
students.add(new StudentBean("o7bc074", "Sriram Ganesh", "CSE", 87));
students.add(new StudentBean("o7bb040", "Jaya Prakash", "ECE", 86));
students.add(new StudentBean("o7bd047", "Sundar", "MECH", 85));
students.add(new StudentBean("o7bb039", "Ibrahim Sha", "ECE", 85));
students.add(new StudentBean("o7bd024", "Ranjith", "MECH", 84));
students.add(new StudentBean("o7bb009", "Aswin", "ECE", 84));
students.add(new StudentBean("o7ba029", "Sharmila", "IT", 83));
students.add(new StudentBean("o7ba027", "Nilafar", "IT", 82));
students.add(new StudentBean("o7bc079", "Nisha", "CSC", 81));
students.add(new StudentBean("o7bb039", "Guru Prasad", "ECE", 80));
students.add(new StudentBean("o7bc033", "Gowtham Raj", "CSE", 76));
students.add(new StudentBean("o7bd081", "Dinesh Babu", "MECH", 71));
students.add(new StudentBean("o7ba062", "Lavanya", "IT", 70));
	
	return SUCCESS;
}

public List<StudentBean> getStudents() 
{
	return students;
}

public void setStudents(List<StudentBean> students) 
{
	this.students = students;
}

}
