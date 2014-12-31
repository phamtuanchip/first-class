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
			$('#error5').empty();
			$('#error1').empty();
			$('#error2').empty();
			$('#error3').empty();
			var $imageName = $('#imageName').val();
			var $uploader= $('#uploader').val();
			var $description= $('#description').val();
			var $imageUpload= $('#imageUpload').val();
			var check = true;

			
			if($imageUpload==null || $imageUpload==""){
				$('#error5').text("Upload image");
				check = false;
			}
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
				$('#addForm').submit();
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
		<s:form action="addImage" method="POST" enctype="multipart/form-data" id="addForm">
		<table border="0">
			<tr>
				<td><label for="imageName">Image Name: </label></td>
				<td>
					<s:textfield name="imageName" id="imageName"></s:textfield>
					<s:label name="error1" id="error1" cssStyle="color: red;"></s:label>
				</td>
				
			</tr>
			<tr>
				<td><label for="uploader">Uploader: </label></td>
				<td>
					<s:textfield name="uploader" id="uploader"></s:textfield>
					<s:label name="error2" id="error2" cssStyle="color: red;"></s:label>
				</td>
				
			</tr>
			<tr>
				<td><label for="description">Description: </label></td>
				<td>
					<s:textarea name="description" cols="15" id="description"></s:textarea>
					<s:label name="error3" id="error3" cssStyle="color: red;"></s:label>
				</td>
				
			</tr>
			<tr>
				<td><label for="categoryId">Choose category: </label></td>
				<td>
					<s:select name="categoryId" list="lstCategory" listKey="categoryId" listValue="categoryName"></s:select>
					<s:label name="error4" cssStyle="color: red;"></s:label>
				</td>
					
			</tr>
			<tr>
				<td><label for="imageUpload">Choose Image</label></td>
				<td>
					<s:file name="imageUpload" id="imageUpload" onchange="readURL(this);"></s:file>
					<s:label name="error5" id="error5" cssStyle="color: red;"></s:label>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><img id="image" src="#" /></td>
			</tr>
		</table>
		------------------------------------------------------------------------<br/>
			
		</s:form>
		<input type="submit" value="Add Image" id="addBtn"/>
	</div>
</body>
</html>