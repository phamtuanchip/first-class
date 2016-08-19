<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Data</title>
	</head>
	<body>
		<h2>Add Card:</h2>
		<h2>1. <a href="index.html">Home</a></h2>
		<form:form commandName="cardBean" action="cardadd.html">
	
	   		<table>
	   			<tr>
			       
			        <td><form:hidden path="id"/></td>
			        <td style="color: red; font-style: italic;"><form:errors path="id" /></td>
			    </tr>
			    <tr>
			        <td>1.Name:</td>
			        <td><form:input path="name"  /></td>
			        <td style="color: red; font-style: italic;"><form:errors path="name" /></td>
			    </tr>
			    <tr>
			        <td>2.Type:</td>
			        <td><form:input path="type" /></td>
			        <td style="color: red; font-style: italic;"><form:errors path="type" /></td>
			    </tr>
			    <tr>
			        <td>3.Number Card:</td>
			        <td><form:input path="numberAc"/></td>
			        <td style="color: red; font-style: italic;"><form:errors path="numberAc" /></td>
			    </tr>
			    <tr>
			        <td>4.Account Holders:</td>
			        <td><form:input path="accountHolders"/></td>
			        <td style="color: red; font-style: italic;"><form:errors path="accountHolders" /></td>
			    </tr>
			    <tr>
			        <td>5.Branch:</td>
			        <td><form:input path="branch" /></td>
			        <td style="color: red; font-style: italic;"><form:errors path="branch" /></td>
			    </tr>
			    
			    <tr>
			        <td>6.Account ID:</td>
                    <td><form:input path="aid" readonly="true"/></td>
                    <td style="color: red; font-style: italic;"><form:errors path="aid" /></td>
			    </tr>
			    <tr>
			      <td><input type="submit" value="Submit"/>  <button type="reset" value="Reset">Reset</button></td>
			   
		      </tr>
			</table> 
		</form:form>
			</body>
</html>