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
	<h2>Add Account:</h2>
	<h2>1. <a href="index.html">Home</a></h2>
	<form:form commandName="accountBean" action="/sdnext/accountadd.html">

		<table>
			<tr>
				
				<td><form:hidden path="id" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="id" /></td>
			</tr>
			<tr>
				<td>1.User:</td>
				<td><form:input path="users" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="users" /></td>
			</tr>
			<tr>
				<td>2.Pass:</td>
				<td><form:input path="passwd" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="passwd" /></td>
			</tr>
			<tr>
				<td>3.Name:</td>
				<td><form:input path="name" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="name" /></td>
			</tr>
			<tr>
				<td>4.Age:</td>
				<td><form:input path="age" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="age" /></td>
			</tr>
			<tr>
				<td>5.Identity Card:</td>
				<td><form:input id="cardId" path="identityCard" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="identityCard" /></td>
			</tr>

			<tr>
				<td>6.Address:</td>
				<td><form:input path="address" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="address" /></td>
			</tr>
			<tr>
				<td>7.Email:</td>
				<td><form:input path="emails" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="emails" /></td>
			</tr>
			<tr>
				<td>8.Phone:</td>
				<td><form:input path="phone" /></td>
				<td style="color: red; font-style: italic;"><form:errors
						path="phone" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="save" />
								</tr>
		</table>
	</form:form>
		</body>
</html>