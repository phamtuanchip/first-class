<%@LANGUAGE="VBSCRIPT" CODEPAGE="1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
 This is an error in your site
 <!--#include file="connect(vb).inc" -->

 <%
 	
	
	for i =1 to 254 
	Response.Write()
	next
 <%'=detail%>
 <%=len(detail)%>
 <%=left(detail,254)%>
 <%=varType(detail)%>
 <%conn.execute "update test1 set memory= '"&cstr(detail)&"' where id=1"%>
</body>
</html>
