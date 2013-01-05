<!--#INCLUDE FILE="clsUpload.asp"-->
<!--#include file="connect(vb).inc" -->

<%

if Request.Form("update")= "yes" then ' update thong tin ve cong ty
	
	sql= "update compinfo set CompName='"& Request.Form("CompName")&"',"
	sql= sql+" CompAddress='"& Request.Form("CompAddress")&"',"
	sql= sql+" CompPhone='"& Request.Form("CompPhone")&"',"
	sql= sql+" CompFax='"& Request.Form("CompFax")&"',"
	sql= sql+" CompSlogan='"& Request.Form("CompSlogan")&"',"
	sql= sql+" CompEmail='"& Request.Form("CompEmail")&"',"
	sql= sql+" CompWebsite='"& Request.Form("CompWebsite")&"',"
	sql= sql+" Cancellation='"& Request.Form("Cancellation")&"' where infoId="& Request.form("compId")
	conn.execute sql
'Response.Write sql
Response.Redirect("editinfo.asp")

end if

if Request.Form("id")>0 then ' update loai tours
	conn.execute "update tourstype set name='"& Request.Form("des")&"',uploaded='"&Request.Form("ul")&"' where tourtypeId="&Request.Form("id") 
	Response.Redirect("edittourtype.asp")
else ' them moi loai tours
	
	conn.execute "insert into tourstype (name,uploaded) values ('"&Request.Form("des")&"','"&Request.Form("ul")&"')"
	Response.Redirect("edittourtype.asp")
end if	'update loai tours


%>



