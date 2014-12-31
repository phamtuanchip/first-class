<!--#INCLUDE FILE="clsUpload.asp"-->
<!--#include file="connect(vb).inc" -->


 <%       if isnumeric (Request.QueryString("tourId") )then 
   
            Dim objUpload
			Dim strFileName
			Dim strPath
			session("filename")=""
			' Instantiate Upload Class
			Set objUpload = New clsUpload
			' Grab the file name
			strFileName = objUpload.Fields("file1").FileName
			session("filename") = strFileName
			' Compile path to save file to
			 rs.open "select * from tourstype",conn
			 
			 while not rs.eof 
				 select case cint(Request.QueryString("Type"))
					case rs(0) 
						strPath = Server.MapPath("Uploads\"&rs("uploaded")) & "\" & strFileName
						sqlupdate= "update tours set "& Request.QueryString("update") &"= 'Uploads\"&rs("uploaded")&"\"&strFileName&"' where tourId="& Request.QueryString("tourId")
				 end select
			 rs.movenext()
			 wend
			 rs.close()
			  
			' Save the binary data to the file system
			objUpload("file1").SaveAs strPath
			' Release upload object from memory
			Set objUpload = Nothing
			'File has been saved in file system.
			conn.execute sqlupdate
			url= "edittour.asp?Type="&Request.QueryString("Type")&"&TourId="& Request.QueryString("TourId")&"&action=update" 
 			Response.Redirect(url)
 'Response.Write  strFileName
          end if ' admin upload anh tours  
  %>
