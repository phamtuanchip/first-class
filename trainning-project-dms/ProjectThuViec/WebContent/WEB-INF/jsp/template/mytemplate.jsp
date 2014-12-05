<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<tiles:insertAttribute name="head" ignore="true"></tiles:insertAttribute>
</head>
<body>

<a href="${pageContext.request.contextPath}/xulyfile.html">danh
		sach tai lieu trong he thong</a> |
	<a href="${pageContext.request.contextPath}/danhmuc.html">danh sach
		danh muc</a> |
	<a href="${pageContext.request.contextPath}/index.html">upload file</a>
	
	
	<tiles:insertAttribute name="content"></tiles:insertAttribute>
</body>
</html>