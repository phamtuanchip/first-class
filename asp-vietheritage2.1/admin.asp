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
                <p>Trang chủ của nhà quản trị        </p>
                <% 
						  ma=""
						  ten="Nhập tên đăng nhập vào đây"
						  matkhau=""
						  quyen=""
						  makhach=0
						  diachi=""
						  dienthoai=""
						  thu=""
						  islock=1
						  createnew="yes"
				if Request.QueryString("view")="users" then 
				if isnumeric(Request.QueryString("id")) then 
				      rs.open "select * from users where userId="& Request.QueryString("id")
						  ma=rs("userId")
						  ten=rs("userName")
						  matkhau=rs("userPassword")
						  quyen=rs("right")
						  makhach=rs("customerId")
						  diachi=rs("userAdress")
						  dienthoai=rs("userPhone")
						  thu=rs("userEmail")
						  islock=rs("isActive")
						  createnew="no"
						  'ma=rs("")
					  rs.close()
					  
				 end if ' kiem tra id co khong ??
				 end if ' xem kieu view
				 
				 if Request.QueryString("lock")="users" then' khoa tai khoan
					 if isnumeric(Request.QueryString("id")) then 
					  if (Request.QueryString("ask")="yes") then ' khoa lai
					  	conn.execute "update users set  isactive=0 where userid="&Request.QueryString("id")
						Response.Redirect("admin.asp")
					  end if
					  if (Request.QueryString("ask")="no") then ' mo ra
					  	conn.execute "update users set  isactive=1 where userid="&Request.QueryString("id")
						Response.Redirect("admin.asp")
					  end if
					 end if
				 end if ' ket thuc khoa tai khoan
				 
				  if Request.QueryString("delete")="users" then' xoa tai khoan
					 if isnumeric(Request.QueryString("id")) then 
					 conn.execute "delete * from users where userid="& Request.QueryString("id")
					 Response.Redirect("admin.asp")  
					 end if
				  end if ' ket thuc xoa tai khoan
				 %>
				<form id="usersdetail" name="usersdetail" method="post" action="admin.asp">
                  <table width="100%" border="1" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="25%" class="style18">Mã</td>
                      <td width="75%" class="style8"><label for="textfield"></label>
                        <input name="ma" type="text" id="ma" value="<%=ma%>" size="2"  />
                        <input name="new" type="text" id="new" value="<%=createnew%>" size="2"  readonly="1"/></td>
                    </tr>
                    <tr>
                      <td class="style18">Tên đăng nhập </td>
                      <td class="style8"><input name="tendangnhap" type="text" id="tendangnhap" value="<%=ten%>"  onfocus="this.value=''"/><%= Request.QueryString("errormes") %></td>
                    </tr>
                    <tr>
                      <td class="style18">Mật khẩu </td>
                      <td class="style8"><input name="matkhau" type="password" id="matkhau" value="<%=matkhau%>" /></td>
                    </tr>
                    <tr>
                      <td class="style18">Quyền</td>
                      <td class="style8">
					  <select name="quyen" id="quyen">
					   <% rs.open "select * from [right]",conn %>
					   <%while not rs.eof %>
					   <%if rs(0)=quyen then %>
					     <option value="<%=rs(0)%>" selected="selected"><%=rs("name")%></option>
					   <%else%>
						 <option value="<%=rs(0)%>"><%=rs("name")%></option>
					   <%end if%>
					   
					   <%
					   	rs.movenext()
						wend
						rs.close()
					   %>
                      </select>                      </td>
                    </tr>
                    <tr>
                      <td class="style18">Là khách?</td>
                      <td class="style8">
					  <select name="makhach" id="makhach" onchange="usersdetail.quyen.value=3;">
                       
					 <% if makhach=0 then ' da cap quyen dang nhap cho khach %>
					   <% rs.open "select * from customers",conn %>  
					    <option value="0" > -chọn một khách để cấp quền-</option> 
					   <% while not rs.eof %>
					     <%if (rs(0)= cint(Request.QueryString("custumId"))) then %>
							<option value="<%=rs(0)%>" selected="selected"><%=rs("name")%></option> 
						  <%else%> 
							<option value="<%=rs(0)%>"><%=rs("name")%></option> 
						  <%end if%> 
						   <% rs.movenext()%>
						   <% wend %>
						   <% rs.close()%>
					 <% else ' da cap qiuen roi ! chi sua du lieu !%>
					      <% rs.open "select * from customers",conn %>  
					   <% while not rs.eof %>
					      <%if (rs(0)=makhach) then %>
							<option value="<%=rs(0)%>" selected="selected"><%=rs("name")%></option> 
						  <%end if%>
						  
						   <% rs.movenext()%>
						   <% wend %>
						   <% rs.close()%>
						   <% end if %>
					   </select>
                        </td>
                    </tr>
                    <tr>
                      <td class="style18">Địa chỉ </td>
                      <td class="style8"><input name="diachi" type="text" id="diachi" value="<%=diachi%>" /></td>
                    </tr>
                    <tr>
                      <td class="style18">Điện thoại </td>
                      <td class="style8"><input name="dienthoai" type="text" value="<%=dienthoai%>" /></td>
                    </tr>
                    <tr>
                      <td class="style18">Thư</td>
                      <td class="style8"><input name="thu" type="text" id="thu" value="<%=thu%>" /></td>
                    </tr>
                    <tr>
                      <td class="style18">Trạng thái </td>
                      <td class="style8">
					  <select name="trangthai" id="trangthai">
					   <% select case islock %>
					   <% 
					   		case 1 
					   %>
					     <option value="1" selected="selected">Mở</option>
						 <option value="0" >Khóa</option>
					    <%
							case 0
						%>
						 <option value="1" >Mở</option>
						 <option value="0" selected="selected">Khóa</option>
					   <% end select %>
                      </select></td>
                    </tr>
                    <tr>
                      <td class="style18">&nbsp;</td>
                      <td class="style8"><input type="submit" name="Submit" value="Ghi lại" />
                        <% if createnew="no" then %>
						<input type="button" name="Submit2" value="xóa" onclick="confirm('Bạn thực sựu muốn sóa : '+usersdetail.tendangnhap.value+' ?');window.location='admin.asp?delete=users&id='+usersdetail.ma.value;" />
						<%end if%>
						</td>
                    </tr>
                  </table>
                 </form>
				 <%  
				 if len(Request.Form())>0 then ' khi form kich hoat !
				 	if (trim(Request.Form("new"))="yes") then ' tao moi tai khoan
					    rs.open "select count (userName) as dem from [users] where username='"&Request.Form("tendangnhap")&"'",conn
						checkname=rs(0)
						rs.close()
						'Response.Write checkname
						if checkname=0 then ' kiem tra trung ten
							sqlinsert ="insert into users (userName,userPassword,[right],customerId,userAdress,userPhone,userEmail,isActive) values("
							sqlinsert =sqlinsert+ "'"& Request.Form("tendangnhap")&"','"& Request.Form("matkhau")&"',"& Request.Form("quyen")&","& Request.Form("makhach")&",'"& Request.Form("diachi")&"','"& Request.Form("dienthoai")&"','"& Request.Form("thu")&"',"& Request.Form("trangthai")&")"
					   		'Response.Write sqlinsert
					   		conn.execute sqlinsert
						else
							errormes="Tên đăng nhập này đã có, bạn phải làm lại"
						 	Response.Redirect("admin.asp?errormes="&errormes)
						end if ' kiem tra ton tai cua ten
					end if ' ket thuc tao moi !
					
					if (trim(Request.Form("new"))="no") then ' update tai khoan
					       sqlupdate ="update users set userName='"&Request.Form("tendangnhap")&"',userPassword='"&Request.Form("matkhau")&"',[right]="&Request.Form("quyen")&",customerId="&Request.Form("makhach")&",userAdress='"&Request.Form("diachi")&"',userPhone='"&Request.Form("dienthoai")&"',userEmail='"& Request.Form("thu")&"',isActive="&Request.Form("trangthai")&" where userId="& Request.Form("ma")
						   'Response.Write sqlupdate
						   conn.execute sqlupdate
					end if
			 end if ' ket thuc kiem tra kich hoat !
				 %>
				<%rs.open "select * from users",conn%>												
                <table width="100%" border="1" cellspacing="0" cellpadding="0">
                  <tr>
                    <td class="style18">Tên đăng nhập </td>
                    <td class="style18">Quyền </td>
                    <td class="style18">Trạng thái/Chuyển </td>
                    <td class="style18">Thư điện tử </td>
                  </tr>
                  <%while not rs.eof  %>
				  <tr>
                    <td class="style8"><a href="admin.asp?view=users&id=<%=rs(0)%>" title="Xem và sửa thông tin!"><%=rs("username")%></a></td>
                    <td class="style8"><% set rsright =server.CreateObject("adodb.recordset")
						   rsright.open "select * from [right] where rightid="&rs("right"),conn
						   Response.Write rsright("name")						
					       rsright.close()

						%>
					</td>
                    <td class="style8">
						<%
						   select case rs("isactive")
						   	case 1 
								Response.Write("Mở ") 
								%>
								<a href="admin.asp?lock=users&id=<%=rs(0)%>&ask=yes">-->Khóa</a>
								<%
							case 0 
								Response.Write("Khóa ")
								%>
								 <a href="admin.asp?lock=users&id=<%=rs(0)%>&ask=no">-->Mở</a>
								<%
						   end select
						%>
					</td>
                    <td class="style8"><%=rs("useremail")%>&nbsp;</td>
                  </tr>
				  <%
				  	rs.movenext()
					wend
					rs.close()
				  %>
                </table>
                <p>&nbsp;        </p>
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
