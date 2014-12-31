<% 
	dim conn
	dim strings
	dim rs
	strings = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Server.MapPath("vietheritage.mdb" )
	set conn= Server.CreateObject("ADODB.Connection")
	set rs  = Server.CreateObject("ADODB.RecordSet")
	conn.open strings
%>