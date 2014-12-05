<%@page import="java.util.Date"%>
<%@page import="controller.*"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>index</title>


</head>
<body>
	

	<h1>Upload File</h1>
	<br>
	<spring:form method="post"
		action="${pageContext.request.contextPath}/index/save.html"
		commandName="FileUploadForm" enctype="multipart/form-data">
		<table>
			<tr>
				<td>Mo Ta</td>
				<td><textarea name="mota"></textarea></td>
			</tr>
			<tr>
				<td>Keyword</td>
				<td><input type="text" name="keyword"></td>
			</tr>
			<tr>
				<td>Loai Tai Lieu</td>
				<td><select name="danhmucid">
						<c:forEach var="dm" items="${dsdm}">
							<option value="${dm.danhmucid}">${dm.loaitl}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td>tim kiem file</td>
				<td><input id="curl" name="file" type="file"
					required="required" /></td>
			</tr>

			<tr>
				<td><input class="submit" type="submit" value="Upload" /></td>
				<td><input type="reset" value="clear"></td>
			</tr>
		</table>



	</spring:form>






</body>
</html>
