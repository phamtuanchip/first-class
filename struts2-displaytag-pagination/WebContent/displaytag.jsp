<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students Details</title>
<style type="text/css">
.odd{
background-color: silver;
}
span{
margin-top:15px;
margin-left:60px;
margin-bottom:15px;
color:maroon;
}
/* for hiding the page banner */
.pagebanner{
display: none;
}
/* for coustamizing page links */
.pagelinks{
color: maroon;
margin-left: 60px;
margin-top:50px;
}

/* for shifting all the Export options*/
.exportlinks
{
margin-top: 5px;
margin-left: 50px;
}
/* For changing the spaces between export link */
.export{
margin-left: 30px;
}
</style>
 
<html>
<body>

<display:table export="true" id="studentTable" name="students" pagesize="5" cellpadding="5px;"
cellspacing="5px;" style="margin-left:50px;margin-top:20px;" requestURI="">

<display:column property="rollNo" title="Roll No" sortable="true"></display:column>
<display:column property="studentName" title="Student Name" sortable="true" ></display:column>
<display:column property="department" title="Department" sortable="true"></display:column>
<display:column property="percentage" title="Percentage" sortable="true"></display:column>
</display:table>

</body>
</html>
