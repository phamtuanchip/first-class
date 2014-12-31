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
              <td><!-- InstanceBeginEditable name="noidung" --><%
		cusname=Request.Form("contactName")
		email=Request.Form("contactEmail")
		phone=Request.Form("contactPhone")
		title=Request.Form("contactTitle")
		message=Request.Form("contactContent")
		know=Request.Form("knowFromId")
		sqltext="insert into contacts (contactName,contactEmail,contactPhone,contactTitle,contactContent,contactDate,knowFromId) "
		sqltext=sqltext + " values('"&cusname&"','"&email&"','"&phone&"','"&title&"','"&message&"',date(),"&know&")"
		conn.Execute sqltext 
		%>
              <%session("thankto")="Thank you very much for your interest in our online service. we'll get back to you within 24 hours!" %>
			  <%= Response.Redirect("default.asp") %><!-- InstanceEndEditable --></td>
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
