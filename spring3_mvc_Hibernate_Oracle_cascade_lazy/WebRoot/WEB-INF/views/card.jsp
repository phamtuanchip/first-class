<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Card Of Account</title>
</head>
<body>
	<h1>Card Of Account</h1>
	<h2>2. <a href="index.html">Home</a></h2>
	<form:form commandName="cardBean" action="multi.html">
		<input type="hidden" name="mode" value="card" />
		<c:if test="${!empty cards}">
			<table align="left" border="1">
				<tr>
					<th>ID</th>
					<th>Name Bank</th>
					<th>Type Card</th>
					<th>Number card</th>
					<th>Card Holders</th>
					<th>Branch</th>
					<th>Account ID</th>
					<th>Actions on Row</th>
				</tr>

				<c:forEach items="${cards}" var="card">
					<tr>
						<td><c:out value="${card.id}" /></td>
						<td><c:out value="${card.name}" /></td>
						<td><c:out value="${card.type}" /></td>
						<td><c:out value="${card.numberAc}" /></td>
						<td><c:out value="${card.accountHolders}" /></td>
						<td><c:out value="${card.branch}" /></td>
						<td><c:out value="${card.aid}" /></td>
						<td align="center"><a href="multi.html?mode=cardEdit&id=${card.id}">Edit</a>
							| <a href="multi.html?mode=cardDelete&id=${card.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</form:form>
</body>
</html>