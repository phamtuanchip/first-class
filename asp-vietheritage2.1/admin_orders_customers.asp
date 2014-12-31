<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/template_quantri.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Wellcome VietHeritage Travel Admin pages</title>
<!-- InstanceEndEditable -->
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
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
<!--
.style56 {	color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style56 {color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style57 {	color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style57 {color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style49 {color: #51588c}
.style49 {color: #51588c}
.style58 {	font-family: tahoma;
	font-size: 11px;
	color: #ff7800;
}
.style58 {font-family: tahoma;
	font-size: 11px;
	color: #ff7800;
}
.style55 {color: #009966}
.style59 {	color: #ff6600;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style59 {color: #ff6600;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
-->
</style>
<!-- InstanceEndEditable -->
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
.style18 {	color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style18 {color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style19 {	color: #767676;
	font-size: 10px;
	font-family: tahoma;
}
.style19 {color: #767676;
	font-size: 10px;
	font-family: tahoma;
}
.style20 {	font-family: tahoma;
	font-size: 10px;
	color: #FFFFFF;
}
.style20 {font-family: tahoma;
	font-size: 10px;
	color: #FFFFFF;
}
.style21 {	color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style21 {color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style22 {	color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style22 {color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style23 {	color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style23 {color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style24 {	color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
.style24 {color: #767676;
	font-size: 11px;
	font-family: tahoma;
}
#Layer1 {
	position:absolute;
	left:86px;
	top:61px;
	width:122px;
	height:126px;
	z-index:1;
	overflow: auto;
}
-->
</style>
</head>

<body>
<!-- ImageReady Slices (main.psd) -->
<!--#include file="connect(vb).inc" -->
<% 
	rs.open " select * from compinfo ",conn
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
        <td width="488" align="left" valign="top"  ><a href="admin.asp"><img width="488" height="196" border="0"  src="<%=bannerUrl%>"/></a></td>
        <td width="292" align="left" valign="top"><table width="100%" height="196"  border="0" cellpadding="0" cellspacing="0">
          <tr align="left" valign="top">
            <td width="145"  style="background-repeat:no-repeat; background-position:left top "><div style="padding-left:23px; padding-top:33px">
              
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
            <td width="2" style="background-repeat:no-repeat; background-position:top left ">&nbsp;</td>
            <td style="background-repeat:no-repeat; background-position:right top "><div style="padding-left:5px; padding-top:33px">
              
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
                        <td width="41"><a href="#"><img src="images/but_2.gif" width="41" height="40" border="0" /></a></td>
                        <td width="42"><a href="#"><img src="images/but_3.gif" width="42" height="40" border="0" /></a></td>
                        <td width="163" background="images/back_3.gif"><div style="padding-left:5px; padding-top:7px"><span class="style3"><%=compslogan%></span></div></td>
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
    <td width="241" height="612" align="left" valign="top"><div style="padding-left:0px; padding-bottom:5px">
      <table width="241"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td align="left" valign="top"><table width="241"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="40" align="left" valign="top" background="images/kettle_2222.gif"><div style="padding-left:53px; padding-top:16px"><span class="style4"><a href="admin_orders_customers.asp?action=orders" style="text-decoration:none " >Danh sách đơn hàng</a> </span></div></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td align="left" valign="top"><div style="padding-bottom:5px; padding-top:10px">
            <table width="241"  border="0" cellpadding="0" cellspacing="0" background="images/back_mini.gif" style="background-repeat:repeat-y; background-position:right ">
              <tr>
                <td align="left" valign="top"><div style="padding-bottom:18px; padding-top:16px">
                  <table width="241"  border="0" cellspacing="0" cellpadding="0">
                    <%
						dim rscount
						set rscount=server.CreateObject("adodb.recordset")
						
						rscount.open "select count(*) from orders as dem",conn
						orderNum=rscount(0)
						rscount.close()
						
						rscount.open "select count(*) from orders as dem where status=1",conn
						ordernew=rscount(0)
						rscount.close()
						
						rscount.open "select count(*) from orders as dem where status=4",conn
						orderFinish=rscount(0)
						rscount.close()
						
						rscount.open "select count(*) from orders as dem where status=3",conn
						orderInservices=rscount(0)
						rscount.close()
						
						rscount.open "select count(*) from orders as dem where status=3 and tourId<>0",conn
						orderPlan=rscount(0)
						rscount.close()
						
						rscount.open "select count(*) from orders as dem where status=3 and tourId=0",conn
						orderselect=rscount(0)
						rscount.close()
						
						rscount.open "select count(*) from orders as dem where status=2",conn
						orderCancel=rscount(0)
						rscount.close()
					%>
					<tr>
                      <td align="left" valign="top" background="images/rep.gif" style="background-repeat:repeat-y; background-position:left "><div class="style23" style="padding-left:24px; padding-top:5px; padding-bottom:10px">
					  Hiện có:<%=orderNum%> đơn hàng <a href="admin_orders_customers.asp?action=orders" style="text-decoration:none " >+++</a><br />
					  -Mới:<%=ordernew%><br />
                      -Đã phục vụ:<%=orderFinish%><br />
                      -Chờ phục vụ:<%=orderInservices%><br />
                       +Theo chuyến:<%=orderselect%><br />
                       +Đặt tùy chọn:<%=orderPlan%>
                       <br />
                      -Đã hủy:<%=orderCancel%>
                      </div>                        
                       </td>
                    </tr>
                  </table>
                </div></td>
              </tr>
              <tr>
                <td align="left" valign="top"><table width="241%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="43" align="left" valign="top" background="images/kettle_2.gif"><div style="padding-left:61px; padding-top:16px"><span class="style4"><a href="admin_orders_customers.asp?action=customers" style="text-decoration:none " >Danh sách khách hàng</a> </span></div></td>
                  </tr>
				  <% 
					  rscount.open "select count(*) from customers as dem",conn
					  Cusnum=rscount(0)
					  rscount.close()
					  
					  rscount.open "select count(*) from feedback as dem",conn
					  Feedback=rscount(0)
					  rscount.close()
					  
					  rscount.open "select count(*) from contacts as dem",conn
					  Contacts=rscount(0)
					  rscount.close()
					%>
                  <tr>
                    <td height="53" align="left" valign="top"><div class="style10" style="padding-left:24px; padding-top:5px; padding-bottom:10px">Hiện có:<%=Cusnum%> khách hàng <a href="admin_orders_customers.asp?action=customers" style="text-decoration:none " >+++</a><br />
                    Chờ liên lạc:<%=Contacts%> <a href="admin_new_feedback.asp?action=contacts" style="text-decoration:none " >+++</a><br />
                      Góp ý:<%=Feedback%> bài <a href="admin_new_feedback.asp?action=feedback" style="text-decoration:none " >+++</a>
</div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top"><table width="241"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="43" align="left" valign="top" background="images/kettle_222.gif"><div style="padding-left:61px; padding-top:16px"><span class="style4"><a href="admin_orders_customers.asp?action=tours" style="text-decoration:none " >Danh sách các chuyến đi</a></span></div></td>
                  </tr>
                  <tr>
                    <%
					  
					  rscount.open "select count(*) from tours as dem",conn
					  tourNum=rscount(0)
					  rscount.close()
					  
					  rscount.open "select count(*) from tourstype as dem",conn
					  tourType=rscount(0)
					  rscount.close()
					  
					  %>
					<td align="left" valign="top">                      <div class="style24" style="padding-left:24px; padding-top:5px; padding-bottom:10px">Hiện có: <%=tourNum%> chuyến đi <a href="edittour.asp?Action=addnew" style="text-decoration:none" >+++</a> <br />
						  Thuộc: <%=tourType%>&nbsp;loại khác nhau <a href="edittourtype.asp" style="text-decoration:none " >+++</a> <br />
						  <%rs.open "select * from tourstype ",conn%>
							<%while not rs.eof
							   rscount.open "select count(*) from tours as dem where type="&rs(0),conn
							  countbytype=rscount(0)
							  rscount.close()
					  		%>
								 -<a href="display.asp?Type=<%=rs(0)%>" style="text-decoration:none "><%=rs("name")%></a>&nbsp;(<%=countbytype%>) <a href="edittour.asp?Type=<%=rs(0)%>&Action=addnew" style="text-decoration:none ">+++</a><br />
							<%rs.movenext()%>
							<%wend%>
						   <%rs.close()%>
                    </div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td align="left" valign="top"><table width="241"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="43" align="left" valign="top" background="images/kettle_22.gif"><div style="padding-left:61px; padding-top:16px"><span class="style18"><a href="admin.asp" style="text-decoration:none ">Người dùng</a>/<a href="admin_new_feedback.asp?action=news" style="text-decoration:none ">Tin tức</a>/<a href="#" style="text-decoration:none ">Hệ thống</a> </span></div></td>
                  </tr>
                  <tr>
                    <%
						rscount.open "select count(*) from users as dem",conn
						 UserNum=rscount(0)
						 rscount.close()
						 
						 rscount.open "select count(*) from users as dem where right=1",conn
						 AdminNum=rscount(0)
						 rscount.close()
						 
						 rscount.open "select count(*) from users as dem where right=1 and isactive=0",conn
						 AdminLockNum=rscount(0)
						 rscount.close()
						 
						 rscount.open "select count(*) from users as dem where right=2",conn
						 GuideNum=rscount(0)
						 rscount.close()
						 rscount.open "select count(*) from users as dem where right=2 and isactive=0",conn
						 GuideLockNum=rscount(0)
						 rscount.close()
						 
						 rscount.open "select count(*) from users as dem where right=3",conn
						 OldCusNum=rscount(0)
						 rscount.close()
						 
						 rscount.open "select count(*) from users as dem where right=3 and isactive=0",conn
						 OldCusLock=rscount(0)
						 rscount.close()
						 
						 rscount.open "select count(*) from news as dem ",conn
						 NewsNum=rscount(0)
						 rscount.close()
						 
						 rscount.open "select count(*) from focuses as dem ",conn
						 Focus=rscount(0)
						 rscount.close()
					%>
					<td align="left" valign="top">                      <div class="style24" style="padding-left:24px; padding-top:5px; padding-bottom:10px">Hiện có: <%=UserNum%> người dùng <br />
                        -Quản trị: <%=AdminNum%>&nbsp;người dùng<br />
                        +Không khóa:<%=AdminNum-AdminLockNum%><br />
                        +Khóa:<%=AdminLockNum%><br />
                        -Hướng dẫn: <%=GuideNum%> người<br />
                        +Không khóa:<%=GuideNum-GuideLockNum%><br />
                        +Khóa:<%=GuideLockNum%><br />
                        -Khách ruột: <%=OldCusNum%> người<br />
                        +Cho đăng nhập:<%=OldCusNum-OldCusLock%><br />
                        +Cấm đăng nhập:<%=OldCusLock%>
                        <br />
                        <br />
                        Hiện có: <%=NewsNum%> tin và bài <a href="admin_new_feedback.asp?action=news" style="text-decoration:none " >+++</a> <br />
                        Tiêu điểm: <%=Focus%> <a href="admin_new_feedback.asp?action=forcuses" style="text-decoration:none " >+++</a><br />
                        Bài mới nhất <br />
                        Đơn hàng mới nhất<br />
                        Khách hàng mới nhất <br /> 
                        Hiện có: links <a href="permitlinks.asp" style="text-decoration:none">+++</a> <br />
                        <br />
                        <a href="editinfo.asp" style="text-decoration:none ">Thay thông tin công ty</a><br />
                        <br />
                        Số người ghé website <%=Application("totvisitors")%>
                        <br />
                                            </div></td>
                  </tr>
                  
				  <tr>
                    <td align="left" valign="top">&nbsp;</td>
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
                <td width="308" align="left" valign="top"><div style="padding-left:53px; padding-top:16px"><span class="style4">Bạn quản trị website này thế nào ? </span></div></td>
                <td align="left" valign="top"><div style="padding-left:53px; padding-top:16px"><span class="style4"><a href="login.asp?logout=yes" style="text-decoration:none"><%=session("logoutlink")%></a></span></div></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="left" valign="top"><div style="padding-left:14px; padding-top:2px">
          <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td>
			  <% 
			  	if session("login")=false then 
					response.Redirect("login.asp")
				end if 
				if session("right")<>1 then 
					response.Redirect("default.asp")
				end if 
			  %>
			  <!-- InstanceBeginEditable name="noidungquantri" -->
			  <p>Quản trị các đơn hàng và khách hàng
			  
			    <%
				 dim rsjoin
				 set rsjoin =server.CreateObject("adodb.recordset")
				 dim rsstatus
				 set rsstatus= server.CreateObject("adodb.recordset")
				%>  
			    <%if Request.QueryString("action")="orders" then %>
			    <br />
			    Quản trị đơn hàng </p>
				<% if (Request.QueryString("oid"))>0 then  %>
							   <% 
							   sqlupdate= " update orders set [status]="& Request.QueryString("ono")&" where orderid="&Request.QueryString("oid")  
							    conn.execute sqlupdate
								'Response.Write sqlupdate
		
				 %>
				<%end if%> 
							
			  <table width="100%" border="1" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="8%" nowrap="nowrap" class="style57">Mã số</td>
                  <td width="12%" nowrap="nowrap" class="style57">Tên chuyến đi </td>
                  <td width="20%" nowrap="nowrap" class="style57">Của khách </td>
                  <td width="30%" nowrap="nowrap" class="style57">Ngày đặt hàng </td>
                  <td width="25%" nowrap="nowrap" class="style57">Ngày sẽ đi </td>
                  <td width="12%" nowrap="nowrap" class="style57">Chuyển</td>
                </tr>
                <%
								
								rsjoin.open"select * from cus_or_tour ",conn
							%>
                <% while not rsjoin.eof %>
                <tr>
                  <td nowrap="nowrap" class="style58"><%=rsjoin("orderid")%>&nbsp;</td>
                  <td nowrap="nowrap" class="style59"><a href="display.asp?Type=<%=rsjoin("type")%>&amp;TourId=<%=rsjoin("tourid")%>&amp;Action=view" style="text-decoration:none"><%=rsjoin("tname")%></a>&nbsp;</td>
                  <td nowrap="nowrap"><a href="admin_orders_customers.asp?action=customers&id=<%=rsjoin("customerId")%>&type=view" style="text-decoration:none"><%=rsjoin("cname")%></a></td>
                  <td nowrap="nowrap" class="style8"><%=rsjoin("orderdate")%>&nbsp;</td>
                  <td nowrap="nowrap" class="style8"><%=rsjoin("begindate")%>&nbsp;</td>
                  <td nowrap="nowrap" class="style5"><%=rsjoin("orderstatusname")%>&nbsp;
                      <%
							  	
								rsstatus.open "select * from orderstatus where orderStatusId <> "&rsjoin("orderStatusId"),conn
								while not rsstatus.eof
								%><br />
                      <a href="admin_orders_customers.asp?action=orders&amp;type=view&amp;oid=<%=rsjoin("orderid")%>&amp;ono=<%=rsstatus(0)%>" style="text-decoration:none">(<%=rsstatus(1)%>)</a>
                      <%	
							 	rsstatus.movenext()
								wend
								rsstatus.close()
							  %></td>
                </tr>
                <%
								rsjoin.movenext()
								wend
								rsjoin.close()
							%>
              </table>
			  
			  <p><br />
			    
			      <%end if%>
			      <%if Request.QueryString("action")="customers" then %>
			      <%if isnumeric(Request.QueryString("id")) then ' kiam tra id%>
				  
				  
			    <%if Request.QueryString("type")="view" then ' xem va sua%>
			    <%
				  	dim rscustum,tendangnhap,tdn
					set rscustum=server.CreateObject("adodb.recordset")
					set tendangnhap=server.CreateObject("adodb.recordset")
					
					makhach= Request.QueryString("id")
					tendangnhap.open "select * from users where customerid="&makhach,conn
						if not tendangnhap.eof then
							tdn=tendangnhap("username")
							daco=true
							uid=tendangnhap(0)
						else
							tdn="Cấp tên đăng nhập"
							daco=false
						end if
					tendangnhap.close
					rscustum.open "select * from customers where customerid="&makhach,conn
				  %>
			    </p>
			  <form action=""  method="post" enctype="multipart/form-data" name="customerview" id="customerview"   %>
                    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="110"  rowspan="10" valign="top"><a href="#"><img src="<%=rscustum("cuspic")%>" width="100" height="100" border="0" style="margin-top:5px; margin-right:10px; margin-bottom:5px" /></a></td>
                        <td width="152"  valign="top" class="style56"><p>Họ và tên </p></td>
                        <td width="237"  valign="top" class="style4 style55"><%=rscustum("name")%></td>
                      </tr>
                      <tr>
                        <td  valign="top" class="style56">Tên gọi </td>
                        <td  valign="top" class="style4 style55"><%=rscustum("contactname")%></td>
                      </tr>
                      <tr>
                        <td  valign="top" class="style56">Hộp thư </td>
                        <td  valign="top" class="style4 style55"><a href="admin_orders_customers.asp?action=customers&id=<%=rscustum(0)%>&type=view&subaction=sendmail" style="text-decoration:none"><%=rscustum("email")%></a></td>
                      </tr>
                      <tr>
                        <td valign="top" class="style56">Điện thoại </td>
                        <td  valign="top" class="style4 style55"><%=rscustum("phone")%></td>
                      </tr>
                      <tr>
                        <td  valign="top" class="style56">Tuổi</td>
                        <td  valign="top" class="style4 style55"><%=rscustum("age")%></td>
                      </tr>
                      <tr>
                        <td  valign="top" class="style56">Địa chỉ </td>
                        <td  valign="top" class="style4 style55"><%=rscustum("address")%></td>
                      </tr>
                      <tr>
                        <td  valign="top" class="style56">Ngồn ngữ </td>
                        <td  valign="top" class="style4 style55"><%=rscustum("langguages")%></td>
                      </tr>
                      <tr>
                        <td  valign="top" class="style56">Tên đăng nhập </td>
                        <td  valign="top" class="style4 style55">
						<%if not daco then %>
							<a href="admin.asp?custumId=<%=rscustum(0)%>" style="text-decoration:none"><%=tdn%></a> 
						<%else%>
							<a href="admin.asp?view=users&id=<%=uid%>"><%=tdn%></a>
						<%end if%></td>
                      </tr>
                      <tr>
                        <td  valign="top" class="style56">Mã số </td>
                        <td  valign="top" class="style4 style55"><%=rscustum(0)%>&nbsp;<a href="admin_orders_customers.asp?action=customers&amp;id=<%=rscustum(0)%>&amp;type=delete"></a></td>
                      </tr>
                      <tr>
                        <td  valign="top" class="style56">Số lượng đơn hàng </td>
                        <td valign="top" class="style4 style55"><%  dim rstnum
								set rstnum =server.CreateObject("adodb.recordset")
								rstnum.open "select count(customerId) as countcus from orders where customerId="&makhach,conn
								Response.Write rstnum(0)
								rstnum.close()
							 %>
                          &nbsp;<a href="admin_orders_customers.asp?action=customers&amp;id=<%=rscustum(0)%>&amp;type=delete" onclick="return confirm('Bạn thực sự muốn xóa đơn hàng, tên đăng nhập và thông tin của: <%=rscustum("name")%> hay không ?')"><%=session("delete")%></a></td>
                      </tr>
                      <tr>
                        <td colspan="3" class="style58" ><p><%=rscustum("favorite")%>
                          <input name="yourid" type="hidden" id="yourid" value="<%=rscustum("customerId")%>" size="1" readonly="1" />
                          <input name="Type" type="hidden" id="Type" value="<%=request.querystring("Type")%>" size="2"  readonly="1"/>
                          <input name="Tourid" type="hidden" id="Tourid" value="<%=request.querystring("tourId")%>" size="2" readonly="1"/>
                        </p>
						  <div align="center">
						    <% if isnumeric(Request.QueryString("oid")) and (Request.QueryString("oid"))>0 then  %>
						    <% 
							   sqlupdate= " update orders set [status]="& Request.QueryString("ono")&" where orderid="&Request.QueryString("oid")  
							    conn.execute sqlupdate
								'Response.Write sqlupdate
		
							   %>
					          <%end if%>
						    <br /> 
						    Danh sách đơn hàng của khách hàng <br />
						    </div>
						  <table width="100%" border="1" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="7%" nowrap="nowrap" class="style57">Mã số</td>
                              <td width="22%" nowrap="nowrap" class="style57">Tên chuyến đi </td>
                              <td width="20%" nowrap="nowrap" class="style57">Ngày đặt hàng </td>
                              <td width="13%" nowrap="nowrap" class="style57">Ngày sẽ đi </td>
                              <td width="18%" nowrap="nowrap" class="style57">Chuyển</td>
                            </tr>
							
                            <%
								'dim rsjoin
								'set rsjoin =server.CreateObject("adodb.recordset")
								rsjoin.open"select * from cus_or_tour where customerId="&makhach,conn
							%>
							<% while not rsjoin.eof %>
							<tr>
                              <td nowrap="nowrap"><%=rsjoin("orderid")%>&nbsp;</td>
                              <td nowrap="nowrap"> <a href="display.asp?Type=<%=rsjoin("type")%>&TourId=<%=rsjoin("tourid")%>&Action=view" style="text-decoration:none"><%=rsjoin("tname")%></a>&nbsp;</td>
                              <td nowrap="nowrap"><%=rsjoin("orderdate")%>&nbsp;</td>
                              <td nowrap="nowrap"><%=rsjoin("begindate")%>&nbsp;</td>
                              <td nowrap="nowrap"><%=rsjoin("orderstatusname")%>&nbsp;
							  <%
							  	'dim rsstatus
								'set rsstatus= server.CreateObject("adodb.recordset")
								rsstatus.open "select * from orderstatus where orderStatusId <> "&rsjoin("orderStatusId"),conn
								while not rsstatus.eof
								%>
									<a href="admin_orders_customers.asp?action=customers&id=<%=makhach%>&type=view&oid=<%=rsjoin("orderid")%>&ono=<%=rsstatus(0)%>" style="text-decoration:none">(<%=rsstatus(1)%>)</a>
							  <%	
							 	rsstatus.movenext()
								wend
								rsstatus.close()
							  %></td>
                            </tr>
							<%
								rsjoin.movenext()
								wend
								rsjoin.close()
							%>
                          </table>                          
                          <p>&nbsp; </p></td>
                      </tr>
                    </table>
				    </form>
					
				  <p>
				    <%if Request.QueryString("subaction")="sendmail" then ' gui mail %>
				    Gửi thư trả lời khách về đơn hàng<br />
                  </p>
				  <% rs.open " select * from customers where customerId= "& Request.QueryString("Id"),conn %>           <form  name="" id="" action="mailtocustomers.asp" method="post">
                  <table cellpadding="0" cellspacing="0" width="100%" align="center" class="border">
                    <tr>
                      <td class="style18">Gửi cho:</td>
                      <td><input name="toname" type="text" class="textbox" id="toname" value="<%=rs("contactName")%>" size="40" /></td>
                    </tr>
                    <tr>
                      <td class="style18">Hộp thư:</td>
                      <td class="bottom_line"><input name="toemail" type="text" class="textbox" id="toemail" value="<%=rs("email")%>" size="40" /></td>
                    </tr>
                    <tr>
                      <td class="style18">CC name:</td>
                      <td><input name="ccname" type="text" class="textbox" id="ccname" size="40" /></td>
                    </tr>
                    <tr>
                      <td class="style18">CC Email:</td>
                      <td class="bottom_line"><input name="ccemail" type="text" class="textbox" id="ccemail" size="40" /></td>
                    </tr>
                    <tr>
                      <td class="style18">BCC name:</td>
                      <td><input name="bccname" type="text" class="textbox" id="bccname" size="40" /></td>
                    </tr>
                    <tr>
                      <td class="style18">BCC Email:</td>
                      <td class="bottom_line"><input name="bccemail" type="text" class="textbox" id="bccemail" size="40" /></td>
                    </tr>
                    <tr>
                      <td class="style18">Attachment</td>
                      <td><input name="filename" type="file" class="textbox" id="filename" size="26" /></td>
                    </tr>
                    <tr>
                      <td class="style18">Chủ đề:</td>
                      <td><input name="title" type="text" class="textbox" id="title" size="40" /></td>
                    </tr>
                    <tr>
                      <td valign="top" class="style18">Nội dung:</td>
                      <td><textarea name="message" cols="40" rows="10" class="textbox" id="message"></textarea></td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><input type="submit" class="textbox" value=" Send " name="submit2" /></td>
                    </tr>
                  </table>
				  </form>
                  <p>
                    <% rs.close() %>
                    <%end if ' ket thuc gui mail kach hang%>
                  </p>
                  <% end if ' khi chon don hang oid>0%>
				  <%
				  	if Request.QueryString("type")="delete" then ' xoa khach hang
					if isnumeric (Request.QueryString("id")) then
					 conn.execute "delete from orders where customerid="&Request.QueryString("id")
					 conn.execute "delete from users where customerid="&Request.QueryString("id")
					 conn.execute "delete from customers where customerid="&Request.QueryString("id")
					end if ' kiem tra id ton tai
				  %>
				  Bạn vừa sóa khách hàng có mã: 
				  <%= Request.QueryString("id")%>  
				  <% end if ' ket thuc phan type = delete %>
			  <%end if %>
			 <table width="100%" border="1" cellspacing="0" cellpadding="0">
			  <tr>
				<td width="7%" class="style57">Mã</td>
			    <td width="29%" class="style57">Tên khách </td>
			    <td width="24%" class="style57">Hộp thư </td>
			    <td width="15%" class="style57">Số đơn hàng </td>
			    <td width="25%" class="style57">Thao tác </td>
			  </tr>
			 <% 'dim ordercount 
			 	'set ordercount  =server.CreateObject("adodb.recordset")
			 	rs.open "select * from customers",conn 
			  %>
			  <%while not rs.eof %>
			   <% rscount.open "select count(*) as dem from orders where customerid="&rs(0),conn %>

			  <tr>
			    <td class="style56"><%=rs(0)%></td>
			    <td class="style56"><a href="admin_orders_customers.asp?action=customers&id=<%=rs(0)%>&type=view" style="text-decoration:none" ><%=rs("name")%></a></td>
			    <td class="style56"><a href="admin_orders_customers.asp?action=customers&id=<%=rs(0)%>&type=view&subaction=sendmail" style="text-decoration:none"><%=rs("email")%></a></td>
			    <td class="style56"><%=rscount(0)%></td>
			    <td class="style56"><a href="admin_orders_customers.asp?action=customers&amp;id=<%=rs(0)%>&amp;type=delete" onclick="return confirm('Bạn thực sự muốn xóa đơn hàng, tên đăng nhập và thông tin của: <%=rs("name")%> hay không ?')"><%=session("delete")%></a>&nbsp;</td>
			  </tr>
			    <%rscount.close()%>
			  <%
			  	rs.movenext()
				wend
				rs.close()
			  %>
			 </table>

			  <%end if%>
			  <%if Request.QueryString("action")="tours" then %>
			  	Quản trị các chuyến đi
			  <%end if%>
			  <!-- InstanceEndEditable --></td>
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
          <td width="361" background="images/bot_rep.gif"><%
		  	dim rsnevi 
			set rsnevi =Server.CreateObject("adodb.recordset")
			rsnevi.open "select * from navigator ",conn 
		  %>
              <table width="361" height="50"  border="0" cellpadding="0" cellspacing="0">
                <tr align="left" valign="top">
                  <%while not rsnevi.eof %>
                  <td align="left" valign="top" nowrap="nowrap"><div style="padding-left:10px; padding-top:23px"><a href="" class="style20"><%=rsnevi("nvname")%></a></div></td>
                  <%	
			  	rsnevi.movenext()
				wend
			  %>
                </tr>
              </table>
            <%rsnevi.close()%>
          </td>
          <td background="images/bot_rep.gif">&nbsp;</td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr align="left" valign="top">
    <td height="100%" colspan="2"><div style="padding-left:11px; padding-top:6px">
      <div align="center"><img src="images/bottom_pic.gif" width="2" height="30" align="left" style="margin-right:10px " /> <span class="style19">All Rights Reserved. 2004 <%=compname%>. Address: <%=compaddress%><br />
        Phone:<%=compphone%>&nbsp; Fax:<%=conmpfax%>&nbsp; Email:<%=compemail%><br />
        Contact Us:&nbsp;website:</span>&nbsp;<a href="http://<%=compwebsite%>" class="style19" style="text-decoration:none ">http://<%=compwebsite%> </a></div>
    </div></td>
  </tr>
</table>
<!-- End ImageReady Slices -->

</body>
<!-- InstanceEnd --></html>
