package com.simplecode.form;

public class StudentBean 
{

private String rollNo;
private String studentName;
private String department;
private int percentage;

public StudentBean(String rollNo, String studentName, String department, int percentage) 
{
	this.rollNo = rollNo;
	this.studentName = studentName;
	this.department = department;
	this.percentage = percentage;
}

public String getRollNo() 
{
	return rollNo;
}

public void setRollNo(String rollNo) 
{
	this.rollNo = rollNo;
}

public String getStudentName() 
{
	return studentName;
}

public void setStudentName(String studentName) 
{
	this.studentName = studentName;
}

public String getDepartment() 
{
	return department;
}

public void setDepartment(String department) 
{
	this.department = department;
}

public int getPercentage() 
{
	return percentage;
}

public void setPercentage(int percentage) 
{
	this.percentage = percentage;
}

}