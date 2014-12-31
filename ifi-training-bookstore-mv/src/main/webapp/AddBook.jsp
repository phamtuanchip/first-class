<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
</head>
<body>
<h1 align="center">Add New Book</h1>
<table align="center">
<s:form action="addBook">
	<s:textfield name="objBook.book_title" label="Book Title" />
	<s:textfield name="objBook.book_price" label="Book Price" />
	<s:textfield name="objBook.book_description" label="Book Description" />
	<s:textfield name="objBook.book_publicYear" label="Book Public Year" />
	<s:textfield name="objBook.author_id" label="Author ID"/>
	<s:textfield name="objBook.category_id" label="Category ID"/>
	<s:submit value="Add New Book"  />
</s:form>
</table>
</body>
</html>