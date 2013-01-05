<!--#INCLUDE FILE="clsUpload.asp"-->
<!--#include file="connect(vb).inc" -->

<%

if Request.QueryString("compId")>0 then
	
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
	strPath = Server.MapPath("uploads") & "\ulcompinfo\" & strFileName
	objUpload("File1").SaveAs strPath
	' Save the binary data to the file system
	' Release upload object from memory
	Set objUpload = Nothing
	if Request.QueryString("type")="banner" then
	 sqlupdate=" update compinfo set bannerurl='uploads\ulcompinfo\"&strFileName&"' where infoid="& Request.QueryString("compId")
	end if
	if Request.QueryString("type")="logo" then
	 sqlupdate=" update compinfo set logourl='uploads\ulcompinfo\"&strFileName&"' where infoid="& Request.QueryString("compId")
	end if
	conn.execute sqlupdate
	Response.Write sqlupdate

end if


	%>
	<%
		Response.Redirect("editinfo.asp")
	%>
	<%'=sql%>


