<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" language="javascript" src="js/datatable/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addBtn').click(function(){
			$('#error1').empty();
			$('#error2').empty();
			$('#error3').empty();
			var $imageName = $('#imageName').val();
			var $uploader= $('#uploader').val();
			var $description= $('#description').val();
			var check = true;

			
			if($imageName==null || $imageName ==""){
				$('#error1').text("Enter image name");
				check = false;
			}
			if($uploader==null || $uploader ==""){
				$('#error2').text("Enter uploader name");
				check = false;
			}
			if($description==null || $description ==""){
				$('#error3').text("Enter description");
				check = false;
			}
			if(check==true){
				$('#editForm').submit();
			}
			
		});
	});
</script>
<script type="text/javascript">
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#image')
                .attr('src', e.target.result)
                .width(150)
                .height(80);
        };

        reader.readAsDataURL(input.files[0]);
    }
}
</script>
</head>
<body>
	<div>
		<s:form action="editImage" method="POST" enctype="multipart/form-data" id="editForm" >
			<s:hidden name="image.imageId" value="%{image.imageId}"></s:hidden>
			<label for="imageName">Image Name: </label>
			<s:textfield id="imageName" name="image.imageName" value="%{image.imageName}"></s:textfield>
			<s:label name="error1" id="error1" cssStyle="color: red;"></s:label>
			<br>
			<label for="uploader">Uploader: </label>
			<s:textfield id="uploader" name="image.uploader" value="%{image.uploader}"></s:textfield>
			<s:label name="error2" id="error2" cssStyle="color: red;"></s:label>
			<br>
			<label for="description">Description: </label>
			<s:textarea id="description" name="image.description" cols="15" value="%{image.description}"></s:textarea>
			<s:label name="error3" id="error3" cssStyle="color: red;"></s:label>
			<br>
			<label for="categoryId">Choose category: </label>
			<s:select name="categoryId" list="lstCategory" listKey="categoryId" listValue="categoryName" headerKey="%{cate.categoryId}" headerValue="%{cate.categoryName}"></s:select>
			<br>
			<label for="imageUpload">Upload other image: </label>
			<s:file name="imageUpload" id="imageUpload" onchange="readURL(this);"></s:file>
			<s:label name="error5" id="error5" cssStyle="color: red;"></s:label>
			<br>
			<label for="imageUpload">Image: </label>
			<img id="image" width="150px" height="80px" alt="" src="<s:url action='imageAction?imgId=%{image.imageId}'/>" />
			<br>
			
		</s:form>
		<input type="submit" value="Edit Image" id="addBtn"/>
	</div>
</body>
</html>