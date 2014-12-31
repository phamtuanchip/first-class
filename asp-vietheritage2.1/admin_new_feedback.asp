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
.style25 {color: #51588c}
.style25 {color: #51588c}
.style56 {color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style56 {color: #ff7800;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style57 {color: #51588c;
	font-size: 11px;
	font-family: tahoma;
	font-weight: bold;
}
.style57 {color: #51588c;
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
			  <p>Cập nhật tin tức--xem phản hồi--liên lạc với khách hàng			    </p>
			  <% if Request.QueryString("action")="contacts" then %>
			  liên lạc với khách hàng
			  <%if Request.QueryString("type")="delete"  then%>
			  <%
			  sqldel =" DELETE * from contacts where contactId="& Request.QueryString("id")
			  conn.execute  sqldel
			  %>
			  Bạn vừa xóa thành công một mối liên lạc có mã: <%= Request.QueryString("id") %>
			  <%end if ' ket thuc phan xoa%>
			  <table width="100%" border="1" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="7%" class="style57">Mã</td>
                  <td width="13%" class="style57">Tên khách </td>
                  <td width="31%" class="style57">Hộp thư </td>
                  <td width="30%" class="style57">Chủ đề</td>
                  <td width="19%" class="style57">Thao tác </td>
                </tr>
                <% 'dim ordercount 
			 	'set ordercount  =server.CreateObject("adodb.recordset")
			 	rs.open "select * from contacts",conn 
			  %>
                <%while not rs.eof %>
                
                <tr>
                  <td class="style56"><%=rs(0)%></td>
                  <td class="style56"><%=rs("contactName")%></td>
                  <td class="style56"><a href="admin_new_feedback.asp?action=contacts&amp;id=<%=rs(0)%>&amp;type=mail"  style="text-decoration:none"><%=rs("contactEmail")%></a></td>
                  <td class="style56"><a href="admin_new_feedback.asp?action=contacts&amp;id=<%=rs(0)%>&amp;type=view"  style="text-decoration:none"><%=rs("contactTitle")%></a></td>
                  <td class="style56"><a href="admin_new_feedback.asp?action=contacts&amp;id=<%=rs(0)%>&amp;type=delete" onclick="return confirm('Bạn thực sự muốn xóa thông tin của: <%=rs("contactName")%> hay không ?')" style="text-decoration:none"><%=session("delete")%></a>&nbsp;</td>
                </tr>
                
                <%
			  	rs.movenext()
				wend
				rs.close()
			  %>
              </table>
			  <p>
			    <%%>
			      <%if Request.QueryString("type")="view"  then%>
			      <%
			   rs.open "select * from contactsave where contactId="& Request.QueryString("id") ,conn 
			   
			  %>
			    </p>
			  <p>&nbsp;</p>
			  <table width="100%" border="0" cellpadding="0" cellspacing="0" id="contactsinfo">
                <tr>
                  <td width="22%" class="style57">Gửi từ </td>
                  <td><span class="style56"><%=rs("contactName")%></span></td>
                  </tr>
                <tr>
                  <td class="style57">Email</td>
                  <td><span class="style56"><%=rs("contactEmail")%></span></td>
                </tr>
                <tr>
                  <td class="style57">Điện thoại </td>
                  <td><span class="style56"><%=rs("contactPhone")%></span></td>
                </tr>
                <tr>
                  <td class="style57">Được biết qua </td>
                  <td><span class="style56"><%=rs("knowFor")%></span></td>
                </tr>
                <tr>
                  <td class="style57">Về vấn đề </td>
                  <td><span class="style56"><%=rs("contactTitle")%></span></td>
                  </tr>
                <tr>
                  <td class="style57">Nội dung </td>
                  <td><span class="style56"><%=rs("contactContent")%></span></td>
                </tr>
                <tr>
                  <td class="style57">Ngày</td>
                  <td><span class="style56"><%=rs("contactDate")%></span></td>
                </tr>
              </table>
			  <p>
			    <%rs.close()%>
			      <%end if ' ket thuc phan xem %>
				  <%if Request.QueryString("type")="sendmail"  then %>
				 <% 
				  '+---------------------------------------------
					host="localhost"
					SenderName="Mr Nguyen Truong Son"
					SenderEmail="sales@vietheritage.com"
					'+---------------------------------------------
					toname=Request.Form("toname")
					toemail=Request.Form("toemail")
					ccemail=Request.Form("ccname")
					ccname=Request.Form("ccemail")
					bccname=Request.Form("bccname")
					bccemail=Request.Form("bccname")
					filename=Request.Form("filename")
					title=Request.Form("title")
					message=Request.Form("message")
If Request.Form("submit")<>"" and toEmail<>"" Then
	Set Mail = Server.CreateObject("Persits.MailSender")
	Mail.IsHTML=true
	Mail.Host = host
	Mail.From = SenderEmail
	Mail.FromName = SenderName
	Mail.AddAddress toemail,toname
	If ccEmail<>"" Then 
		Mail.AddCC ccemail,ccname 
	End If
	If bccEmail<>"" Then 
		Mail.AddBcc bccname,bccname 
	End If
	If filename<>"" Then 
		Mail.AddAttachment filename 
	End If
	Mail.Subject=title
	Mail.Body = message
	Mail.Send
	
%>
				  Bạn vừa gửi thư thành công tới khách hàng: <%= Request.Form("toname") %>
				  <%end if ' gui thu thanh cong %>
				  <%end if ' ket thuc gui thu%>
			      <% if Request.QueryString("type")="mail"  then 
			  %>
			    Gửi mail trả lời			    </p>
				 <%
			   rs.open "select * from contactsave where contactId="& Request.QueryString("id") ,conn 
			   
			  %>
			  <form action="admin_new_feedback.asp?action=contacts&amp;id=<%=rs(0)%>&amp;type=sendmail" method="post">
                <table cellpadding="0" cellspacing="0" width="100%" align="center" class="border">
                  <tr>
                    <td class="style18">Gửi cho:</td>
                    <td><input name="toname" type="text" class="textbox" value="<%=rs("contactName")%>" size="40" /></td></tr>
                  <tr>
                    <td class="style18">Hộp thư:</td>
                    <td class="bottom_line"><input name="toemail" type="text" class="textbox" value="<%=rs("contactEmail")%>" size="40" /></td>
                  </tr>
                  <tr>
                    <td class="style18">CC name:</td>
                    <td><input type="text" class="textbox" size="40" name="ccname" /></td>
                  </tr>
                  <tr>
                    <td class="style18">CC Email:</td>
                    <td class="bottom_line"><input type="text" class="textbox" size="40" name="ccemail" /></td>
                  </tr>
                  <tr>
                    <td class="style18">BCC name:</td>
                    <td><input type="text" class="textbox" size="40" name="bccname" /></td>
                  </tr>
                  <tr>
                    <td class="style18">BCC Email:</td>
                    <td class="bottom_line"><input type="text" class="textbox" size="40" name="bccemail" /></td>
                  </tr>
                  <tr>
                    <td class="style18">Attachment</td>
                    <td><input type="file" name="filename" class="textbox" size="26" /></td>
                  </tr>
                  <tr>
                    <td class="style18">Chủ đề:</td>
                    <td><input name="title2" type="text" class="textbox" value="Reply for:  <%=rs("contactTitle")%>" size="40" /></td>
                  </tr>
                  <tr>
                    <td valign="top" class="style18">Nội dung:</td>
                    <td><textarea cols="40" rows="10" class="textbox" name="message"></textarea></td>
                  </tr>
                  <tr>
                    <td></td>
                    <td><input type="submit" class="textbox" value=" Send " name="submit" /></td>
                  </tr>
                </table>
			    </form>
				<%rs.close()%>
			  <p>
			    <% end if ' ket thuc phan gui mail %>
			    <% end if ' ket thuc phan contacts %>
			    </p>
			  <p>&nbsp;</p>
			  <p>
			    <%if Request.QueryString("action")="news" then %>
			    Xem và cập nhật tin tức </p>
			  <%if Request.Form("newID")>0 then  %>
				  <%
				  	' = Request.Form() 
					'conn.execute "update news  set "
					sqlupdate= "update news  set newTitle='"& Request.Form("title") &"',newHighlight='"&Request.Form("Highlight")&"',newContent='"&Request.Form("Content")&"',picUrl1='"&Request.Form("picUrl1")&"',updateDay=date(),newRanking="&Request.Form("Ranking")&" where newId="&Request.Form("newid")
					
					'Response.Write sqlupdate
					conn.execute sqlupdate
				  %>
				   
				  <%end if %>
				<%if cint(Request.QueryString("newId"))>0 then  %>
				
				  <% rs.open "select * from news where newId="& Request.QueryString("newId"),conn 
				  newid=rs(0)
				  newTitle=rs("newTitle")
				  newHighlight=rs("newHighlight")
				  newContent=rs("newContent")
				  picUrl1=rs("picUrl1")
				  updateDay=rs("updateDay")
				  newRanking=rs("newRanking")
				  rs.close()
				  
				  %>
				<%else%>
				<%
				  newid=0
				  newTitle=""
				  newTitle=""
				  newHighlight=""
				  newContent=""
				  picUrl1=""
				  updateDay=""
				  newRanking=""
				%>
				<%end if%>
				<form action="newsToFileSystem.asp?newid=<%=newId%>"  method="post" enctype="multipart/form-data" name="upload" id="upload" >
                  <table width="90%" border="0" cellspacing="0">
                    <tr>
                      <td width="30%">&nbsp;</td>
                      <td width="70%" valign="bottom">Chọn ảnh để đưa tin </td>
                    </tr>
                    <tr>
                      <td colspan="2"><div align="center"><img src="<%=picUrl1%>" border="0" /></div></td>
                      </tr>
                    <tr>
                      <td colspan="2"><input name="File1" type="file" class="VoteButton" id="File1" />
                        <input name="Submit2" type="submit" class="VoteButton" value="Upload" /></td>
                      </tr>
                  </table>
				  </form>
				<form action="admin_new_feedback.asp?action=news&amp;newId=<%=newId%>" method="post" name="news" id="news">
                  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td class="style57">Id</td>
                      <td><input name="newId" type="text" id="newId" value="<%=newID%>" size="2"  readonly="1"/></td>
                    </tr>
                    <tr>
                      <td class="style57">Đường dẫn ảnh </td>
                      <td><input name="picUrl1" type="text" id="picUrl1" value="<%=picUrl1%>" size="45"  readonly="1"/></td>
                    </tr>
                    <tr>
                      <td width="24%" class="style57"><div align="left">Chủ đề </div></td>
                      <td width="68%"><div align="left">
                          <input name="title" type="text" id="title" value="<%=newTitle%>" size="45" />
                      </div></td>
                    </tr>
                    <tr>
                      <td class="style57"><div align="left">Tóm lược </div></td>
                      <td><div align="left">
                          <textarea name="highlight" cols="45" id="highlight"><%=newHighlight%></textarea>
                      </div></td>
                    </tr>
                    <tr>
                      <td class="style57"><div align="left">
                        Nội dung </div></td>
                      <td><div align="left">
                          <textarea name="content" cols="45" rows="20" id="content"><%=newContent%></textarea>
                      </div></td>
                    </tr>
                    <tr>
                      <td class="style57"><div align="left">xếp hạng </div></td>
                      <td><div align="left">
                          <select name="ranking" id="ranking"  onchange="">
						  <%
						  	dim rsrank 
							set rsrank=server.CreateObject("adodb.recordset")
						  
						  %>
                            <% rsrank.open "select * from ranks order by rankingNum ",conn %>
                            <% while not rsrank.EOF %>
							<%if (newRanking=rsrank("rankingNum")) then %>
                            <option  value="<%=rsrank("rankingNum")%>"   selected="selected"><%=rsrank("rankingName")%></option>
							<%else%>
							<option  value="<%=rsrank("rankingNum")%>"><%=rsrank("rankingName")%></option>
							<%end if%>
                            <%
								rsrank.MoveNext
							  	wend
								rsrank.Close
							 %>
                          </select>
                      </div></td>
                    </tr>
                    <tr>
                      <td class="style57"><div align="left"></div></td>
                      <td><div align="left">
                          <input type="submit" name="Submit" value="Submit" />
                          <input type="reset" name="Reset" value="Reset" />
                      </div></td>
                    </tr>
                  </table>
				  </form>
				  <%
				  	if Request.QueryString("addition")="del" then
						if cint(Request.QueryString("newId"))>0  then
						 conn.execute "delete from news where newId="+Request.QueryString("newId")
						 message="Bạn vừa xóa tin số : "+ Request.QueryString("newId")
						 Response.Redirect("admin_new_feedback.asp?action=news")                
						 Response.Write message
			 
						end if 
					end if ' ket thu addtion action
				  %>
				  
				<p>&nbsp;				</p>
				
                <table width="100%" border="1">
                  <tr>
                    <td width="25%" class="style18">Tiêu đề </td>
                    <td width="33%" class="style18">Tóm tắt </td>
                    <td width="23%" class="style18">Ngày</td>
                    <td width="19%" class="style18">Thao tác </td>
                  </tr>
                  <% rs.open "select * from news"%>
				  <%while not rs.eof  %>
				  <tr>
                    <td class="style5"><%=rs("newTitle")%>&nbsp;</td>
                    <td class="style5"><%=rs("newHighlight")%>&nbsp;</td>
                    <td class="style5"><%=rs("updateDay")%></td>
                    <td class="style5"><a href="admin_new_feedback.asp?action=news&newId=<%=rs(0)%>"><%=session("eddit")%></a>//<a href="admin_new_feedback.asp?action=news&newId=<%=rs(0)%>&addition=del" onclick="return confirm('Bạn thực sự muốn xóa tin : <%=rs("newTitle")%> hay không ?')"><%=session("delete")%></a></td>
                  </tr>
                  <%
				  rs.movenext()
				  wend
				  rs.close()
				  %>
                </table>
                <p>
                  <%end if%>
				  
                  <%if Request.QueryString("action")="forcuses" then %>
                  Xem và cập nhật tiêu đểm
                  <%end if%>
                  <%if Request.QueryString("action")="feedback" then %>
                  Xem phản hồi của khách
                  <%end if%>
                  <%if Request.QueryString("action")="contacts" then %>
                  Liên lạc với khách hàng
                  <%end if%>
                </p>
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
