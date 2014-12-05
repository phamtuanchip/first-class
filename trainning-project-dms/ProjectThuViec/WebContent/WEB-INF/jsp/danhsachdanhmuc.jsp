<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Danh Sach Danh Muc</title>
</head>
<body>

	<table border="1">
		<tr>
			<th>Ten Danh Muc</th>
			<th>Options</th>
		</tr>
		<c:forEach var="dm" items="${dsdm}">
			<tr>
				<td>${dm.loaitl}</td>
				<td><a
					href="${pageContext.request.contextPath}/danhmuc/xoadanhmuc/${dm.danhmucid}.html"
					onclick="return confirm('xoa danh muc nay se xoa tat ca tai lieu lien quan.\n Ban co muon xoa?')">delete</a>
					<a
					href="${pageContext.request.contextPath}/danhmuc/suadanhmuc/${dm.danhmucid}.html">edit</a>
				</td>
			</tr>
		</c:forEach>
	</table>

	<h1>them danh muc</h1>
	<spring:form
		action="${pageContext.request.contextPath}/danhmuc/themdanhmuc.html"
		method="post" commandName="dm">
		
		Ten Danh Muc <input type="text" name="loaitl" required="required">
		<br>
		<input type="submit" value="save">
	</spring:form>

	<br>
	<br>
	

</body>
</html>