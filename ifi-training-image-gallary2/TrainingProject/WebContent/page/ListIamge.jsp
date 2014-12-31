<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css"
	href="js/datatable/css/jquery.dataTables.css">
<script type="text/javascript" language="javascript"
	src="js/datatable/js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="js/datatable/js/jquery.dataTables.js"></script>

<script type="text/javascript">
	$(document).ready(
			function() {
				$('#tb1').dataTable({
					"bFilter" : false,
					"bInfo" : false,
					"bLengthChange" : false,
					"pageLength" : 5,
					stateSave : true
				});

				$("#searchButton").click(function() {
					var $imgName = $('#imgName').val();
					var $uplder = $('#uplder').val();
					var $descr = $('#descr').val();
					var $catId = $('#catId').val();
					var $imageType = $('#imageType').val();
					$('#tb1 > tbody').empty();
 					$.ajax({
 						contentType: "application/json; charset=utf-8",
 						data:{
 							imgName:$imgName,
 							uploader:$uplder,
 							description:$descr,
 							categoryId:$catId,
 							imagetype:$imageType
 	 					},
 						type: 'GET',
						url : 'http://localhost:8080/TrainingProject/rest/search/key',
						dataType: 'json',
						success: function(data){ 
							$.each(data, function(i, field) {
								var txt1 = $("<tr>");
								var txt2 = $("<td>"+field.category.categoryName+"</td>");
								var txt3 = $("<td>"+field.imageName+"</td>");
								var txt4 = $("<td>"+field.uploader+"</td>");
								var txt5 = $("<td>"+field.imageType+"</td>");
								var txt6 = $("<td>"+field.description+"</td>");
								var txt7 = $("<td><img width='150px' height='80px' src='/TrainingProject/imageAction?imgId="+field.imageId+"' /></td>");
								var txt8 = $("<td><a href=/TrainingProject/imageForwardEdit?imgId="+field.imageId+">Edit</a> || <a href=/TrainingProject/daleteImage?imgId="+field.imageId+">Delete</a></td>");
								var txt9 = $("</tr>");
								$('#tb1 > tbody').append(txt1,txt2,txt3,txt4,txt5,txt6,txt7,txt8,txt9)
							});
						}
					});
				});
			});

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div style="width: 50%;">
		<h1>Image Library</h1>
		<button onclick="window.location.href='addCategoryPage'">Add
			Category</button>
		<button onclick="window.location.href='addImageForward'">Add
			Image</button>
		<button onclick="window.location.href='slideShow'">Slide Show</button>
		<br />
		<div id="1111"></div>
		========================================================================================
	</div>
	<div>
		<s:form action="searchImage" method="POST">
			<table border="0">
				<tr>
					<td><label>Image name: </label></td>
					<td><input type="text" name="imgName" id="imgName"
						placeholder="Enter image name" align="left" /></td>
				</tr>
				<tr>
					<td>Uploader:</td>
					<td><input type="text" name="uplder" id="uplder"
						placeholder="Enter uploader name" align="left" /></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><input type="text" name="descr" id="descr"
						placeholder="Enter description" align="left" /></td>
				</tr>
				<tr>
					<td><label>Category</label></td>
					<td><s:select name="catId" list="lstCategory" id="catId"
							listKey="categoryId" listValue="categoryName" headerKey="-1"
							headerValue="All category"></s:select></td>
				</tr>
				<tr>
					<td><label>Image type</label></td>
					<td><s:select
							list="#{'1':'jpeg','2':'png','3':'gif','4':'pjpeg','-1':'All type' }"
							name="imageType" value="-1" id="imageType"></s:select></td>
				</tr>
			</table>
			<input type="submit" value="Search Image" />
		</s:form>
		<input type="button" value="Search Image by ajax" id="searchButton" />
	</div>
	=======================================================================================
	<s:form action="viewByCategory" method="POST" id="changecat">
		<label>Select category to view: </label>
		<s:select id="cat" name="categoryId" list="lstCategory"
			listKey="categoryId" listValue="categoryName" headerKey="-1"
			headerValue="View All category" onchange="this.form.submit()"></s:select>
	</s:form>
	<br />
	<table id="tb1">
		<thead>
			<tr>
				<th>Category Name</th>
				<th>Image Name</th>
				<th>Uploader</th>
				<th>Image Type</th>
				<th>Description</th>
				<th>Image</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody id="body">
			<s:iterator value="lstImage" var="img">
				<tr>
					<td><s:property value="category.categoryName" /></td>
					<td><s:property value="imageName" /></td>
					<td><s:property value="uploader" /></td>
					<td><s:property value="imageType" /></td>
					<td><s:property value="description" /></td>
					<td><img width="150px" height="80px" alt=""
						src="<s:url action='imageAction?imgId=%{#img.imageId}'/>" /></td>
					<td><a
						href="<s:url action='imageForwardEdit?imgId=%{#img.imageId}'/>">Edit</a>
						|| <a href="<s:url action='daleteImage?imgId=%{#img.imageId}'/>">Delete</a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>