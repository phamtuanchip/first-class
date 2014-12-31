<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="js/datatable/css/jquery.dataTables.css">

<script type="text/javascript" language="javascript" src="js/datatable/js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="js/datatable/js/jquery.dataTables.js"></script>

<script type="text/javascript" language="javascript" src="js/cycle-jquery/cycle.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#sl1').cycle({ 
		    fx: 'scrollLeft', 
		    speedIn:  2000, 
		    speedOut: 500, 
		    delay:   -200 
		});
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<button onclick="window.location.href='listImage'">View list image</button>
	</div>
	<div id="sl1" align="center" style="margin-left: 85px">
		<s:iterator value="lstImage" var ="img">
			<div>
				<img width="1080px" height="600px" alt="" src="<s:url action='imageAction?imgId=%{#img.imageId}'/>" />
				<br>
				<label>Category Name: </label>
				<b><s:property value="category.categoryName"/></b>
				<br>
				<label>Image Name: </label>
				<b><s:property value="imageName"/></b>
				<br>
				<label>Uploader: </label>
				<b><s:property value="uploader"/></b>
				<br>
				<label>Image type: </label>
				<b><s:property value="imageType"/></b>
				<br>
				<label>Description: </label>
				<b><s:property value="description"/></b>
			</div>
		</s:iterator>
	</div>
</body>
</html>