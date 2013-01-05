<!--#INCLUDE FILE="clsUpload.asp"-->
<!--#include file="connect(vb).inc" -->

<%


Dim objUpload
Dim strFileName
Dim strPath
	session("filename")=""
	
	' Instantiate Upload Class
	Set objUpload = New clsUpload
	
	' Grab the file name
	strFileName = objUpload.Fields("File1").FileName
	session("filename") = strFileName
	
	' Compile path to save file to
	
	strPath = Server.MapPath("uploads") & "\ulnews\" & strFileName
	objUpload("File1").SaveAs strPath
	if cint(Request.QueryString("newId"))=0 then 
	conn.execute "insert into news (picUrl1) values('uploads\ulnews\"&strFileName&"')"
	
	rs.open "select max(newId) as maxid from news",conn
		maxi=rs(0)
	rs.close()
	else
	conn.execute "update news set picUrl1='uploads\ulnews\"&strFileName&"' where newId="&Request.QueryString("newId")
	maxi=Request.QueryString("newId")
	end if
	
	' Save the binary data to the file system
	
	
	' Release upload object from memory
	Set objUpload = Nothing
	Response.Redirect("admin_new_feedback.asp?action=news&newId="&maxi)
	%>
	