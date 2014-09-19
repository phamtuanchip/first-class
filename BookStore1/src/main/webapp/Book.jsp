<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>
</head>
<body>
<h1 align="center">Book List</h1>
<s:if test="bookList.size() > 0">
<table border="1px" cellpadding="8px" align="center">
	<tr>
		<th>ID</th>
		<th>Title</th>
		<th>Price</th>
		<th>Desciption</th>
		<th>Public Year</th>
		<th>Author ID</th>
		<th>Category ID</th>
		<th>Actions</th>
	</tr>
	<s:iterator value="bookList" status="bookStatus">
		<tr>
			<td><s:property value="book_id"/></td>
			<td><s:property value="book_title"/></td>
			<td><s:property value="book_price"/></td>
			<td><s:property value="book_description"/></td>
			<td><s:property value="book_publicYear"/></td>			
			<td><s:property value="author_id"/></td>
			<td><s:property value="category_id"/></td>
			
			<td>
			<s:url action="deleteBook" var="delete">
				<s:param name="book_id"><s:property value="book_id"/></s:param>
			</s:url>
			<s:url action="editBook" var="edit">
				<s:param name="book_id"><s:property value="book_id"/></s:param>
			</s:url>
				<s:a href="%{edit}" >Edit</s:a>
				<s:a href="%{delete}">Delete</s:a>
			</td>
		</tr>
	</s:iterator>
</table>
</s:if>
<p align="center"><a href="AddBook.jsp">Add New Book</a></p>
</body>
</html>