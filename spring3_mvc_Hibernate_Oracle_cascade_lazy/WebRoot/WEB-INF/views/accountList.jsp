<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Accounts</title>
</head>
<body>
	<h1>List Accounts</h1>
	<h2>1. <a href="index.html">Home</a></h2>
	<h2>2. <a href="accountadd.html">Add Account</a></h2>
	<form:form commandName="accountBean" action="multi.html" >
		<input type="hidden" name="mode" value="list" />
		<c:if test="${!empty accounts}">
			<table align="left" border="1">
				<tr>
					<th>ID</th>
					<th>User</th>
					<th>Pass</th>
					<th>Name</th>
					<th>Age</th>
					<th>Identity Card</th>
					<th>Address</th>
					<th>Email</th>
					<th>Phone</th>
					<th><a href="multi.html?mode=cardList">All Card</a></th>
					<th>Actions on Row</th>
				</tr>
				<c:forEach items="${accounts}" var="account">
					<tr>
						<td><c:out value="${account.id}" /></td>
						<td><c:out value="${account.users}" /></td>
						<td><c:out value="${account.passwd}" /></td>
						<td><c:out value="${account.name}" /></td>
						<td><c:out value="${account.age}" /></td>
						<td><c:out value="${account.identityCard}" /></td>
						<td><c:out value="${account.address}" /></td>
						<td><c:out value="${account.emails}" /></td>
						<td><c:out value="${account.phone}" /></td>
						<td align="center"><a href="multi.html?mode=card&aid=${account.id}">Card of Account</a> | <a href="cardadd.html?aid=${account.id}"> Add Card </a></td>
						<td align="center"><a href="multi.html?mode=edit&id=${account.id}">Edit</a>| <a href="multi.html?mode=delete&id=${account.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</form:form>
</body>
</html>