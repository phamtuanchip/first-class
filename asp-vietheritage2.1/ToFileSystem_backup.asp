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
	
	strPath = Server.MapPath("uploads") & "\customers\" & strFileName
	objUpload("File1").SaveAs strPath
	
	' Save the binary data to the file system
	
	
	' Release upload object from memory
	Set objUpload = Nothing
	%>
	
	'File has been saved in file system.
	'View this file:<BR><%=session("filename")%> <br />
	


