<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/template_noidung.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="" name="keywords" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Wellcome VietHeritage Travel</title>
<!-- InstanceEndEditable -->
<meta name="description" content="Vietnam Heritage Travel and Tourism, Book Vietnam Hotel, When You Travel to Vietnam or Travel to Indochina, Contact our Travel Agent for Adventure Travel, Vietnam Tour Operator, Resort in  Vietnam, Sapa Trekking, Halong Bay Kayaking Tour, Vietnam Holiday, Flight Deals, Accommodation Booking, View Photos, Hanoi Hotel, Saigon Hotels, Hue Hotels, Nha Trang Hotel, Vacance, Voyage to Vietnam, Grand Trip, Halong Travel Cruise, Travel companies">
	<meta name="keywords" content="Vietnam Heritage Travel,Vietnam Tour Operator,Vietnam Tourism Website with Vietnam Adventure Travel,Vietnam Hotel Booking,Hanoi Hotel,Hue Hotel,Saigon Hotel,Nhatrang Hotel,Hanoi Tour,Hoian hotel,Saigon and Mekong Delta Tours,Halong bay,holiday Vietnam,when you Travel to Vietnam just contact us for Vietnam Voyage,Vietnam travel,Vietnam tours,Hotel Viet Nam. Di du lich,tim khach san,Cong ty du lich Vietnam to chuc du lich Thai Lan,Singapore,Trung Quoc,lien he chung toi de di du lich nuoc ngoai,Vietn am trav el">
	<meta name="generator" content="Pss_Group">
	<meta name="page-topic" content="Vietnam travel, vietnam hotel, Viet Nam, Asia, Travel, resort vietnam, vietnam tour,  hanoi hotel, saigon, ticket, transport, train, bus">
	<meta name="copyright" content="VIETHERITEGE TRAVEL,VIETHERITAGE tourist, VIETHERITAGE Travel Agency, Viet Nam Tourism Web Site">
	<meta name="author" content="VIETHERITAGE Travel Travel Agent - Tour Operator based in  Hanoi- Vietnam">
	<meta http-equiv="audience" content="General">
	<meta name="resource-type" content="Document">
	<meta name="distribution" content="Global">
	<meta name="revisit-after" content="2 days">
	<meta name="robots" content="index,follow">

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {
	color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style2 {
	color: #51588c;
	font-size: 10px;
	font-family: tahoma;
	font-weight: bold;
}
.style3 {
	font-family: tahoma;
	font-size: 11px;
	color: #FFFFFF;
}
.style4 {
	color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style5 {
	font-family: tahoma;
	font-size: 11px;
	color: #ff7800;
}
.style7 {color: #767676}
.style8 {
	color: #ff6600;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style10 {
	color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style11 {color: #51588c}
.style12 {font-weight: bold}
.style14 {
	font-family: tahoma;
	font-size: 10px;
	color: #FFFFFF;
}
.style16 {
	color: #767676;
	font-size: 10px;
	font-family: tahoma;
}
.style17 {
	font-family: tahoma;
	font-weight: bold;
	color: #767676;
	font-size: 11px;
}
-->
</style>
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<style type="text/css">
<!--
.style1 {	color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style10 {	color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style11 {color: #51588c}
.style12 {font-weight: bold}
.style14 {	font-family: tahoma;
	font-size: 10px;
	color: #FFFFFF;
}
.style16 {	color: #767676;
	font-size: 10px;
	font-family: tahoma;
}
.style17 {	font-family: tahoma;
	font-weight: bold;
	color: #767676;
	font-size: 11px;
}
.style2 {	color: #51588c;
	font-size: 10px;
	font-family: tahoma;
	font-weight: bold;
}
.style3 {	font-family: tahoma;
	font-size: 11px;
	color: #FFFFFF;
}
.style4 {	color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style5 {	font-family: tahoma;
	font-size: 11px;
	color: #ff7800;
}
.style7 {color: #767676}
.style8 {	color: #ff6600;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style24 {	color: #51588c;
	font-size: 10px;
	font-family: tahoma;
	font-weight: bold;
}
.style24 {color: #51588c;
	font-size: 10px;
	font-family: tahoma;
	font-weight: bold;
}
.style25 {	color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style25 {color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style26 {color: #767676}
.style26 {color: #767676}
-->
</style>
</head>

<body>
<!-- ImageReady Slices (main.psd) -->
<!--#include file="connect(vb).inc" -->
<% rs.open " select * from compinfo ",conn
	if not rs.eof then
	 bannerUrl=rs("bannerUrl")
	 logourl=rs("logoUrl")
	 compname=rs("compname")
	 compaddress=rs("compaddress")
	 compphone=rs("compphone")
	 compfax=rs("compfax")
	 compemail=rs("compemail")
	 compslogan=rs("compslogan")
	 compwebsite=rs("compwebsite")
	 Cancellation=rs("Cancellation")
	 
	else
	 bannerUrl="../images/big_pic.jpg"
	 logourl=""
	 compname="Company Name"
	 compaddress="Address"
	 compphone="Phone"
	 compfax="Fax"
	 compemail="Email"
	 compslogan="your Slogan here"
	 compwebsite="Website"
	 Cancellation="Cancellation"
	end if
	rs.close()
	%>
<table width="780" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr align="left" valign="top">
    <td colspan="2"><table width="780"  border="0" cellspacing="0" cellpadding="0">
      <tr bgcolor="#CACDDF">
        <td height="4" colspan="2" align="left" valign="top"><img src="images/spacer.gif" width="1" height="4" /></td>
      </tr>
      <tr>
        <td width="488" align="left" valign="top"><a href="default.asp"><img src="<%=bannerUrl%>" width="488" height="196" border="0" /></a></td>
        <td width="292" align="left" valign="top"><table width="100%" height="196"  border="0" cellpadding="0" cellspacing="0">
          <tr align="left" valign="top">
            <td width="145" background="images/line_back.gif" style="background-repeat:no-repeat; background-position:left top "><div style="padding-left:23px; padding-top:33px">
              
			  <table width="111" height="21"  border="0" cellpadding="0" cellspacing="0">
				<%rs.open "select * from navigator ",conn%>
				<%while not rs.eof%>
				<tr align="left" valign="top">
                  <td width="20"><a href="<%=rs("nvUrl")%>"><img src="images/home.gif" width="11" height="14" border="0" /></a></td>
                  <td><a href="<%=rs("nvUrl")%>" class="style1" style="text-decoration:none; color: #2d9c1b;"><%=rs("nvName")%></a></td>
                </tr>
				<%rs.movenext()%>
				<%wend%>
				<%rs.close()%>
              </table>
			  
            </div></td>
            <td width="2" background="images/line_back_2.gif" style="background-repeat:no-repeat; background-position:top left ">&nbsp;</td>
            <td background="images/line_back_3.gif" style="background-repeat:no-repeat; background-position:right top "><div style="padding-left:5px; padding-top:33px">
              
			  <table width="100"  border="0" cellpadding="0" cellspacing="0">
				<%rs.open "select * from tourstype ",conn%>
				<%while not rs.eof%>
				<tr align="left" valign="top">
                  <td valign="middle"><img src="images/point_1.gif" width="5" height="5" hspace="5" /></td>
                  <td><a href="display.asp?Type=<%=rs(0)%>" class="style2" style="text-decoration:none "><%=rs("name")%></a></td>
                </tr>
				<%rs.movenext()%>
				<%wend%>
				<%rs.close()%>
              </table>
			  
            </div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="46" colspan="2" align="left" valign="top"><div align="center">
          <table width="776"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="40" align="left" valign="top"><div style="padding-left:239px; padding-top:0px">
                <table width="539" height="40"  border="0" cellpadding="0" cellspacing="0">
                  <tr align="left" valign="top">
                    <td width="251" background="images/back_2.gif"><div style="padding-left:11px; padding-top:13px">
                      <input type="text" name="textfield" style="height:17px; width:140px; font-family:tahoma; font-size:10px; border-color:#CACDDF; border-style:solid " />
                      <a href="#"><img src="images/search.gif" width="60" height="16" border="0" align="absmiddle" /></a></div></td>
                    <td width="288"><table width="288" height="40"  border="0" cellpadding="0" cellspacing="0">
                      <tr align="left" valign="top">
                        <td width="42"><a href="default.asp"><img src="images/but_1.gif" width="42" height="40" border="0" /></a></td>
                        <td width="41"><a href="contactus.asp"><img src="images/but_2.gif" width="41" height="40" border="0" /></a></td>
                        <td width="42"><a href="searchingtours.asp"><img src="images/but_3.gif" width="42" height="40" border="0" /></a></td>
                        <td width="163" background="images/back_3.gif"><div style="padding-left:5px; padding-top:7px"><span class="style3"><a href="galary.asp" style="text-decoration:none"><%=(compslogan)%> </a>
                      </tr>
                    </table></td>
                  </tr>
                </table>
              </div></td>
            </tr>
            <tr>
              <td height="6" align="left" valign="top" bgcolor="#7EC273"><img src="images/spacer.gif" width="1" height="6" /></td>
            </tr>
          </table>
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="241" align="left" valign="top"><div style="padding-left:0px; padding-bottom:5px">
      <table width="241"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td align="left" valign="top"><table width="241"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="40" align="left" valign="top" background="images/kettle_14.gif"><div style="padding-left:53px; padding-top:16px"><span class="style4">Weather</span></div></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td align="left" valign="top"><div style="padding-bottom:5px; padding-top:10px">
            <table width="241"  border="0" cellpadding="0" cellspacing="0" background="images/back_mini.gif" style="background-repeat:repeat-y; background-position:right ">
              <tr>
                <td align="left" valign="top"><div style="padding-bottom:18px; padding-top:16px">
                  <table width="241"  border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td align="left" valign="top" style="background-repeat:repeat-y; background-position:left "><div style="padding-left:24px; padding-top:0px">
                        <div style="padding-left:10px; padding-top:1px; padding-bottom:1px"><a href="#"></a><!--#include file="weather.asp" -->
</div>
                        </div></td>
                    </tr>
                  </table>
                </div></td>
              </tr>
              <tr>
                <td align="left" valign="top"><table width="241%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="43" align="left" valign="top" background="images/kettle_6.gif"><div style="padding-left:61px; padding-top:16px"><span class="style4">Weather and infomation</span></div></td>
                  </tr>
                  <tr>
                    <td height="101" align="left" valign="top"><div style="padding-left:24px; padding-top:24px">
                      <table width="207"  border="0" cellspacing="0" cellpadding="0">
                        <tr align="left" valign="top">
                          <td width="67" class="style17">Select location:</td>
                          <td>
						    <form id="cityform" name="cityform" method="get" action="mapvn.asp">
						      <select name="landId" style="height:17px; width:140px; font-family:tahoma; font-size:10px; border-color:#CACDDF; border-style:solid " >
							  <%
						  	rs.open "select * from locations order by name",conn
						  %>
						  
						  <%while not rs.eof %>
						  <%if (replace(Request.QueryString("landId"),"'",""))=rs(0) then %>                         <option value="<%= rs(0) %>" selected="selected" ><%= ucase(rs(1)) %></option> 
						  <%else%>
						  <option value="<%= rs(0) %>" ><%= ucase(rs(1)) %></option>                   <%end if%>
						  <%
						  rs.movenext()
						  wend
						  rs.close()%>
						        </select>
								 <div style="padding-left:80px; padding-top:5px; padding-bottom:5px"><a href="#"><img src="images/go!.gif" width="60" height="16" border="0"  onclick="document.cityform.submit()"/></a></div>
						      </form>
						 
						  
						  </td>
                        </tr>
                      </table>
                      
                    </div>
                              <div class="style10" style="padding-left:24px; padding-top:5px; padding-bottom:10px">Select one City and click Go! .</div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top"><table width="241"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="43" align="left" valign="top" background="images/kettle_12.gif"><div style="padding-left:61px; padding-top:16px"><span class="style25">News and Focus <a href="admin_new_feedback.asp?action=news" style="text-decoration:blink"><%=session("addnew")%> </a></span></div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top"><div style="padding-left:26px; padding-top:22px; padding-bottom:20px"><img src="images/point_1.gif" width="5" height="5" hspace="2" vspace="0" align="left" style="margin-bottom:10px; margin-top:3px " />
                            <% rs.open "select top 2, * from news order by updateDay" %> 
							<% while  not rs.eof %>
							<span class="style8"> <a href="default.asp?read=news&id=<%=rs(0)%>" style="text-decoration:none"><%= rs("newTitle") %>							</a></span>
							<div style="padding-left:10px; padding-top:0px; font-size: 11px; font-family: tahoma;"><span class="style26"><%= left(rs("newHighlight"),150) %></span>
                                <div style="padding-left:135px; padding-top:0px; padding-bottom:0px"><a href="default.asp?read=news&id=<%=rs(0)%>" class="style24" style="text-decoration:none ">Read more </a><img src="images/point_1.gif" width="5" height="5" hspace="0" vspace="0" /></div>
                            </div>
							<%
							rs.movenext()
							Response.Write "<br/>"
							wend
							rs.close()%>
                    </div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top"><table width="241"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="43" align="left" valign="top" background="images/kettle_7.gif"><div style="padding-left:61px; padding-top:16px"><span class="style4">Cancellation policy</span></div></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top">
					
					<div style="padding-left:26px; padding-top:22px; padding-bottom:20px"><img src="images/point_1.gif" width="5" height="5" hspace="2" vspace="0" align="left" style="margin-bottom:10px; margin-top:3px " />
                                  <div style="padding-left:10px; padding-top:0px; font-size: 11px; font-family: tahoma;"><span class="style7"><%=left(Cancellation,150)%>...</span>
                                      <div style="padding-left:135px; padding-top:0px; padding-bottom:0px"><a href="default.asp?Cancellation=show" class="style2" style="text-decoration:none ">Read more </a><img src="images/point_1.gif" width="5" height="5" hspace="0" vspace="0" /></div>
                                  </div>
                    </div></td>
                  </tr>
                </table></td>
              </tr>
            </table>
          </div></td>
        </tr>
      </table>
    </div></td>
    <td width="539" align="left" valign="top"><table width="539"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top"><table width="539"  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="40" align="left" valign="top" background="images/kettle_8.gif"><table width="100%" height="40"  border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="308" align="left" valign="top"><div style="padding-left:53px; padding-top:16px"><span class="style4"><a href="touroverviews.asp" style="text-decoration:none">What you need to know</a></span></div></td>
                <td align="left" valign="top"><div style="padding-left:53px; padding-top:16px"><span class="style4"><a href="default.asp" style="text-decoration:none">Tours catalogue</a><a href="login.asp?logout=yes" style="text-decoration:none"><%=Session("logoutlink")%></a></span></div></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="left" valign="top"><div style="padding-left:14px; padding-top:2px">
          <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><!-- InstanceBeginEditable name="noidung" --><p class="style11">Booking your tous</p>
                <% if Request.QueryString("Action")="book" then %>
				  <% if isNumeric (Request.QueryString("TourId"))  then
					  sqltext="select * from tours where tourId="&Request.QueryString("TourId")
					  tourid=Request.QueryString("TourId")
					  rs.open sqltext,conn  
				   %>
				   <span class="style11">You must complete some infomation below to book this tours</span>
				   <%
				   dim rsmax,rscustum
					set rsmax =Server.CreateObject("adodb.recordset")
					set rscustum =Server.CreateObject("adodb.recordset")
					   if cint(session("customersId"))>0 then 
					   	rscustum.open "select * from customers where customerid="&session("customersId"),conn
					   else
						conn.execute "insert into customers (name) values ('???')"
						rsmax.open "select max (customerid) as idmax  from customers",conn
						rscustum.open "select * from customers where customerid="&rsmax(0),conn
						session("customersId")=rsmax(0)
						rsmax.close()
				   	   end if ' check customerID session
				   %>
				   <% if not rscustum.eof then %>
				   <form action="upload_cp.asp"  method="post" enctype="multipart/form-data" name="cus_upload" id="cus_upload"   onsubmit="this.action='upload_cp.asp?yourid='+this.yourid.value+'&Type='+this.Type.value+'&Tourid='+this.Tourid.value"%>
					 <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                       <tr>
                         <td  rowspan="5" valign="top"><a href="#"><img src="<%=rscustum("cuspic")%>" width="100" height="100" border="0" style="margin-top:5px; margin-right:10px; margin-bottom:5px" /></a></td>
                         <td  valign="top" class="style1"><p>Name</p>                          </td>
                         <td width="262"  valign="top" class="style4 style55"><%=rscustum("name")%></td>
                       </tr>
                       
                       <tr>
                         <td  valign="top" class="style1">Email</td>
                         <td  valign="top" class="style4 style55"><%=rscustum("email")%></td>
                       </tr>
                       <tr>
                         <td valign="top" class="style1">Phone</td>
                         <td  valign="top" class="style4 style55"><%=rscustum("phone")%></td>
                       </tr>
                       
                       <tr>
                         <td  valign="top" class="style1">Id</td>
                         <td  valign="top" class="style4 style55"><%=rscustum(0)%></td>
                       </tr>
                       <tr>
                         <td  valign="top" class="style1">Number of tours </td>
                         <td valign="top" class="style4 style55">
						 	<%  dim rstnum
								set rstnum =server.CreateObject("adodb.recordset")
								rstnum.open "select count(customerId) as countcus from orders where customerId="&session("customersId"),conn
								Response.Write rstnum(0)
								rstnum.close()
							 %>
						 &nbsp;</td>
                       </tr>
                       <tr>
                         <td colspan="3" class="style5" ><%=rscustum("favorite")%>
                           <input name="yourid" type="hidden" id="yourid" value="<%=rscustum("customerId")%>" size="1" readonly="1" />
                           <input name="Type" type="hidden" id="Type" value="<%=request.querystring("Type")%>" size="2"  readonly="1"/>
                           <input name="Tourid" type="hidden" id="Tourid" value="<%=request.querystring("tourId")%>" size="2" readonly="1"/></td>
                        </tr>
                       <tr>
                         <td colspan="3" class="style8"><div align="center">You can upload your image here ! </div></td>
                       </tr>
                       <tr>
                         <td colspan="3" class="style18"><input name="file1"  type="file" class="style49" id="file1">
                           &nbsp;
                           <input type="submit" name="Submit3" value="Update" /></td>
                       </tr>
                     </table>
			        </form>
					
				  <form action="update_books.asp" method="post" name="bookingtours" id="bookingtours" onsubmit="MM_validateForm('Full Name','','R','Contact Name','','R','Members','','NisNum','Email','','RisEmail');return document.MM_returnValue">
				     <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
                       <tr>
                         <td width="17%" class="style48"><div align="left" class="style44">Full Name  *</div></td>
                         <td colspan="2" class="style48"><div align="left">
                           <input name="Full Name" type="text" id="Full Name" value="<%=rscustum("name")%>" size="40" onfocus="this.value=''"/>
                           <input name="yourid" type="hidden" id="yourid" value="<%=rscustum("customerId")%>" size="1" readonly="1" />
                         </div></td>
                       </tr>
                       <tr>
                         <td class="style48"><div align="left" class="style44">Contact name * </div></td>
                         <td colspan="2" class="style48"><div align="left">
                           <input name="Contact Name" type="text" id="Contact Name" value="<%=rscustum("contactName")%>" size="40" />
                         </div></td>
                       </tr>
                       <tr>
                         <td class="style48"><div align="left">Type of Books </div></td>
                         <td width="33%" nowrap="nowrap" class="style48"><div align="left">
                             <select name="typeOfCus" size="1" id="typeOfCus">
                               <option selected="selected" value="1">Choice One</option>
                               <%dim rscus
							     set rscus=server.CreateObject("adodb.recordset")
							     rscus.open "select * from customerstype",conn%>
                               <%while not rscus.EOF %>
                               <option value="<%=rscus("customertypeId")%>" ><%=rscus("name")%></option>
                               <%
							   	rscus.MoveNext()
									wend 
							    rscus.Close()
								%>
                             </select>
                           with</div></td>
                         <td width="50%" nowrap="nowrap" class="style48"><div align="left">
                             <input name="Members" type="text" id="Members" value="0" size="1" onfocus="this.value=''" onblur="if (this.value=='') this.value='0'" />
                           member(s)</div></td>
                       </tr>
                       <tr>
                         <td class="style48"><div align="left" class="style44">Email *</div></td>
                         <td colspan="2" class="style48"><div align="left">
                             <input name="Email" type="text" id="Email" value="<%=rscustum("email")%>" size="40" />
                         </div></td>
                       </tr>
                       <tr>
                         <td class="style8"><div align="left">Phone number </div></td>
                         <td colspan="2" class="style8"><div align="left">
                             <input name="phone" type="text" id="phone" value="<%=rscustum("phone")%>" />
                         </div></td>
                       </tr>

                       <tr>
                         <td class="style8"><div align="left">Address</div></td>
                         <td colspan="2" class="style8"><div align="left">
                             <textarea name="address" cols="40" id="address"><%=rscustum("address")%></textarea>
                         </div></td>
                       </tr>
                       <tr>
                         <td class="style8"><div align="left">Your age </div></td>
                         <td colspan="2" class="style8"><div align="left">
                             <select name="age" size="1">
                               <option value="Not know">Choice one</option>
                               <option value="Under 20">Under 20</option>
                               <option value="Between 20 and 50">Between 20 and 50</option>
                               <option value="Over 50">Over 50</option>
                             </select>
                         </div></td>
                       </tr>
                       <tr>
                         <td class="style8"><div align="left">Native Language</div></td>
                         <td colspan="2" class="style8"><div align="left">
                             <select name="lang">
                               <%rscus.open "select * from  languages",conn%>
                               <%while not rscus.EOF %>
                               <option value="<%=rscus(0)%>" ><%=rscus("name")%></option>
                               <%
							   	rscus.MoveNext()
									wend 
							    rscus.Close()
								%>
                             </select>
                         </div></td>
                       </tr>
                       <tr>
                         <td class="style8"><div align="left">Favorite</div></td>
                         <td colspan="2" class="style8"><div align="left">
                             <textarea name="favorite" cols="40" rows="6" id="favorite"><%=rscustum("favorite")%></textarea>
                         </div></td>
                       </tr>
                       <tr>
                         <td class="style8"><a class="clsNor">Departure</a>:</td>
                         <td colspan="2" class="style8">
						  <script src="Calendar.js" type="text/jscript" language="javascript"></script>
<link href="Calendar.css" rel="stylesheet" type="text/css" />
						  <input name="begindate" type="text" id="begindate" value="<%=date()%>" />
                          <input name="btnExpiryDate" type="button" value="Change" onclick="return showCalendar('begindate')" />
                          Tour id
                          <input name="tourId" type="text" id="tourId" value="<%=tourId%>" size="1" readonly="1" /></td>
                       </tr>
                       <tr>
                         <td class="style8">&nbsp;</td>
                         <td colspan="2" class="style8"><input type="submit" name="Submit" value="Submit" />
                           <input type="reset" name="Submit2" value="Reset" /></td>
                       </tr>
                     </table>
				     <table width="98%" border="0" cellpadding="0" cellspacing="0">
                       <tr>
                         <td height="46" colspan="2" class="style45">Your tour will be book ! </td>
                       </tr>
                       <tr>
                         <td height="46" colspan="2" class="style45"><div align="center">Type: 
						     <a href="display.asp?Type=<%=rs("type")%>">
						     <%
						 	dim rstype 
							set rstype =server.CreateObject("adodb.recordset")
							rstype.open "select * from tourstype where tourtypeId="&rs("type"),conn
							Response.Write rstype("name")
							rstype.close()
						 %></a>						 tours<br />
                           Name: <a href="display.asp?Type=<%=rs("type")%>&TourId=<%=rs(0)%>&Action=view"><%=rs("name")%></a>
                         </div></td>
                        </tr>
                       <tr>
                         <td colspan="2" class="style46" ><span class="style48">LENGTH <b>:</b></span><b> </b><%=rs("length")%></td>
                       </tr>
                       <tr>
                         <td height="32" colspan="2" class="style46"><div align="justify"><span class="style48">HIGHLIGHTS :</span><%=rs("highlight")%></div></td>
                       </tr>
                       <tr>
                         <td colspan="2">&nbsp;</td>
                       </tr>
                       <tr>
                         <td colspan="2" valign="top"><img src="<%=rs("picture1")%>" width="180"height="180" hspace="2" vspace="2" border="0" /><img src="<%=rs("picture2")%>" width="180"height="180" hspace="2" vspace="2" border="0" /><img src="<%=rs("picture3")%>" width="180"height="180" hspace="2" vspace="2" border="0" /></td>
                       </tr>

                       <tr>
                         <td colspan="2"><div align="left"><span style="FONT-SIZE: 8pt; COLOR: #333399; FONT-FAMILY: Arial"><em>NOTE:</em></span><br />
                                 <%=rs("notice")%></div></td>
                       </tr>
                       <tr>
                         <td colspan="2">&nbsp;</td>
                       </tr>
                       <tr>
                         <td width="52%" height="41"><div align="left" class="style47"><span class="style48"><b>Trip includes</b>:</span><br />
                                 <%=rs("include")%></div></td>
                         <td width="48%"><div align="left" class="style47"><b class="style48">Trip excludes</b><span class="style48">:</span><br />
                               <%=rs("exclude")%></div></td>
                       </tr>

                       <tr>
                         <td colspan="2"><div align="left" class="style47"><span class="style48">Trip cost:</span><%=rs("price")%></div></td>
                       </tr>
                       <tr>
                         <td colspan="2"><div align="left" class="style47"><span class="style48">Accommodation:</span><%=rs("accommodation")%></div></td>
                       </tr>
                     </table>
					 <div align="center"></div>
				    </form> 
					<%rscustum.close()%>
					<%end if ' end rscustum%>
				   <%rs.close()%>
				  <% end if ' da co id cua tour%>
				<% end if ' dat tour%><!-- InstanceEndEditable --></td>
            </tr>
          </table>
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr align="left" valign="top">
    <td height="50" colspan="2"><div style="padding-left:2px; padding-top:0px">
      <table width="776" height="50"  border="0" cellpadding="0" cellspacing="0">
        <tr align="left" valign="top">
          <td width="361" background="images/bot_rep.gif">
		  <%
		  	dim rsnevi 
			set rsnevi =Server.CreateObject("adodb.recordset")
			rsnevi.open "select * from navigator ",conn 
		  %>
		  <table width="361" height="50"  border="0" cellpadding="0" cellspacing="0">
            <tr align="left" valign="top">
              <%while not rsnevi.eof %>
			  	<td align="left" valign="top" nowrap="nowrap"><div style="padding-left:10px; padding-top:23px"><a href="../<%=rsnevi("nvUrl")%>" class="style14"><%=rsnevi("nvname")%></a></div></td>
			  <%	
			  	rsnevi.movenext()
				wend
			  %>
            </tr>
          </table>
		  <%rsnevi.close()%>		  </td>
          <td background="images/bot_rep.gif">&nbsp;</td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr align="left" valign="top">
    <td height="100%" colspan="2"><div style="padding-left:11px; padding-top:6px">
      <div align="center"><img src="images/bottom_pic.gif" width="2" height="30" align="left" style="margin-right:10px " /> <span class="style16">All Rights Reserved. 2004 <%=compname%>. Address: <%=compaddress%><br />
      Phone:<%=compphone%>&nbsp; Fax:<%=conmpfax%>&nbsp; Email:<%=compemail%><br />
      Contact Us:&nbsp;website:</span>&nbsp;<a href="http://<%=compwebsite%>" class="style16" style="text-decoration:none ">http://<%=compwebsite%> </a></div>
    </div></td>
  </tr>
</table>
<!-- End ImageReady Slices -->

</body>
<!-- InstanceEnd --></html>
