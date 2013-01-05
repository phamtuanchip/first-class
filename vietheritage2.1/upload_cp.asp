<!--#INCLUDE FILE="clsUpload.asp"-->
<!--#include file="connect(vb).inc" -->

<%  if isnumeric(Request.QueryString("yourid")) then
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
	
	strPath = Server.MapPath("Uploads") & "\ulcustomers\" & strFileName
	objUpload("File1").SaveAs strPath
	conn.execute " update customers set cuspic='uploads\ulcustomers\"&strFileName&"' where customerid="& Request.QueryString("yourid")
	' Save the binary data to the file system
	
	' Release upload object from memory
	Set objUpload = Nothing
	url="bookingtours.asp?Type="&Request.QueryString("Type")&"&TourId="&Request.QueryString("Tourid")&"&Action=book"
	Response.Redirect(url)
	%>
	
<%end if ' kiem tra id khach %>
