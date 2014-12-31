<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sua Tai Lieu</title>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	
		$("#file").click(function(){
			$("#tentailieu").val("");
			});
	});
</script>

</head>
<body>
	<spring:form method="post" commandName="tl"
		action="${pageContext.request.contextPath}/xulyfile/xulyedit.html"
		enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>Ten Tai Lieu</td>
				<td><input type="text" value="${tl.tentl}" id="tentailieu">
				<input type="file"  name="file" id="file"/></td>
			</tr>
			<tr>
				<td>Mo Ta</td>
				<td><spring:input path="mota" value="${tl.mota}" /></td>
			</tr>
			<tr>
				<td>KeyWord</td>
				<td><spring:input path="keyword" value="${tl.keyword}" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="save"  /></td>
			</tr>
			<spring:hidden path="matl" />
			<spring:hidden path="danhmuc.danhmucid" />
		</table>
	</spring:form>

</body>
</html>