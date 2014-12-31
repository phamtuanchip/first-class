<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/2.js"></script>

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/1.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/css/3.css" />



<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/js/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.servletContext.contextPath}/css/jquery-ui.css" />
<script>
	$(function() {
		$("#datepicker1").datepicker();
		$("#datepicker2").datepicker();
	});
</script>


<script type="text/javascript">
    $(document).ready(function () {
        $("#test").click(function () {
        	var tentl="",keyword="",mota="",madm="",date1="",date2="";
        	tentl+= document.getElementById("tentl").value;
        	keyword+= document.getElementById("keyword").value;
        	madm+= document.getElementById("madm").value;
        	mota+= document.getElementById("mota").value;
        	date1+= document.getElementById("datepicker1").value;
        	date2+= document.getElementById("datepicker2").value;
            $.ajax({
                contentType: "application/json",
                data: {
						tentl:tentl,
						keyword:keyword,
						madm:madm,
						mota:mota,
						date1:date1,
						date2:date2,
                    },
                url: "http://localhost:8080/ProjectThuViecWSServer/rest/file/searchJson",
                type: "GET",
                dataType: 'json',
                success: function (tailieucongty) {
                	$.each(tailieucongty, function(i, field){  
           	    	 var txt = "<table border='1' id='example' class='display' cellspacing='0' width='100%'><thead><tr> <th>Ma Tai Lieu</th><th>Ten Tai Lieu</th><th>Ngay UpLoad</th>	<th>KeyWord</th>	<th>Mo Ta</th>	<th>Options</th>	</tr></thead>	<tfoot>	<tr><th>Ma Tai Lieu</th><th>Ten Tai Lieu</th><th>Ngay UpLoad</th><th>KeyWord</th><th>Mo Ta</th><th>Options</th></tr></tfoot><tbody>";
           		        for (i = 0; i < field.length; i++) {
           		        	txt += "<tr> <td>"+field[i].matl +"</td>";
           		            txt +="<td>"+field[i].tentl+"</td>";
           		            txt += "<td>"+field[i].ngayupload"</td>";
           		         	txt += "<td>"+field[i].keyword"</td>";
           		      		txt += "<td>"+field[i].mota"</td>";
           		   			txt += "<td><a href='${pageContext.request.contextPath}/xulydownload/download/${tl.matl}.html'>download</a> <a href='${pageContext.request.contextPath}/xulyfile/edit/${tl.matl}.html'>edit</a> <a href='${pageContext.request.contextPath}/xulyfile/delete/${tl.matl}.html' onclick='return confirm('are you sure?')'>delete</a></td> </tr>";
           				}
           		        txt=txt+"</table>";
           				document.getElementById("testjson").innerHTML = txt;
           	      });
                },
                error: function (xhr, msg) {
                    alert("error");
                }
            });
            return false;
        })
    });
</script>


<script type="text/javascript">
	$(document).ready(function() {
		$('#example').dataTable({
		     "bFilter" : false,
		     "bInfo" : false,
		     "bLengthChange" : false,
		     "pageLength" : 5,
		     stateSave : true
		    });
	});
</script>

