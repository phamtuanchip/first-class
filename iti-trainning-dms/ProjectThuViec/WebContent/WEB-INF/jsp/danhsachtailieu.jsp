<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>danh sach tai lieu</title>

</head>
<body>

	<spring:form method="post" commandName="search"
		action="${pageContext.request.contextPath}/xulyfile/search.html">
		<table border="1">
			<caption>Tìm Kiếm</caption>
			<tr>
				<td>Ten Tai Lieu</td>
				<td><input type="text" name="tentl" id="tentl"></td>
			</tr>
			<tr>
				<td>Key Word</td>
				<td><input type="text" name="keyword" id="keyword"></td>
			</tr>
			<tr>
				<td colspan="2">date 1 <input type="text" name="date1" id="datepicker1">
					date 2 <input type="text" name="date2" id="datepicker2"></td>
			</tr>
			<tr>
				<td>mo ta</td>
				<td><input type="text" name="mota" id="mota"></td>
			</tr>
			<tr>
				<td>danh muc</td>
				<td><select name="madm" id="madm">
					<option value="">default</option>
						<c:forEach var="dm" items="${dsdm}">
							<option value="${dm.danhmucid}">${dm.loaitl}</option>
						</c:forEach>
				</select>
			</tr>
			<tr>
				<td><input type="submit" value="search" /></td>
				<td><button id="test">search = json</button></td>
			</tr>
		</table>
	</spring:form>

	<br>
	<br>

<div id="testjson">
	<table border="1" id="example" class="display" cellspacing="0"
		width="100%">
		<thead>
			<tr>
				<th>Ma Tai Lieu</th>
				<th>Ten Tai Lieu</th>
				<th>Ngay UpLoad</th>
				<th>KeyWord</th>
				<th>Mo Ta</th>
				<th>Options</th>
			</tr>
		</thead>

		<tfoot>
			<tr>
				<th>Ma Tai Lieu</th>
				<th>Ten Tai Lieu</th>
				<th>Ngay UpLoad</th>
				<th>KeyWord</th>
				<th>Mo Ta</th>
				<th>Options</th>
			</tr>
		</tfoot>

		<tbody>
			<c:forEach var="tl" items="${dstl}">
				<tr>
					<td>${tl.matl}</td>
					<td>${tl.tentl}</td>
					<td>${tl.ngayupload}</td>
					<td>${tl.keyword}</td>
					<td>${tl.mota}</td>
					<td><a
						href="${pageContext.request.contextPath}/xulydownload/download/${tl.matl}.html">download</a>
						<a
						href="${pageContext.request.contextPath}/xulyfile/edit/${tl.matl}.html">edit</a>
						<a
						href="${pageContext.request.contextPath}/xulyfile/delete/${tl.matl}.html"
						onclick="return confirm('are you sure?')">delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>