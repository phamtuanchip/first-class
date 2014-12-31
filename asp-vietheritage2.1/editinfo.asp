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
.style49 {color: #51588c}
.style49 {color: #51588c}
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
              <%
				 	dim rscomp
					set rscomp=server.CreateObject("adodb.recordset")
					rs.open "select count (*) as dem from compinfo ",conn
					if rs(0)>0 then
						rscomp.open " select * from compinfo",conn
					else
						conn.execute " insert into compinfo (compname) values ('Put your company name here')"
						rscomp.open " select * from compinfo",conn
					end if 
					rs.close()
				 %>
              <form action="upload_info.asp"  method="post" enctype="multipart/form-data" name="banner" id="banner"  onsubmit="this.action='upload_info.asp?type=banner&amp;compId='+this.compid.value" %>
                <table width="100%" border="1" cellspacing="0" cellpadding="0">
                  <tr>
                    <td>Banner:</td>
                  </tr>
                  <tr>
                    <td width="71%"><div align="center"><a href="#"><img src="<%=rscomp("BannerUrl")%>" width="488" height="196" border="0" style="margin-top:5px; margin-right:10px; margin-bottom:5px" /></a></div></td>
                  </tr>
                  <tr>
                    <td><span class="style18">
                      <input name="file1"  type="file" class="style49" id="file1" />
                      &nbsp;
                      <input type="submit" name="Submit3" value="Update" />
                      <input name="compid" type="text" id="compid" value="<%=rscomp("infoid")%>" size="3" readonly="1"/>
                    </span></td>
                  </tr>
                </table>
              </form>
              <form action="upload_info.asp"  method="post" enctype="multipart/form-data" name="logo" id="logo" onsubmit="this.action='upload_info.asp?type=logo&amp;compId='+this.compid.value" %>
                <table width="100%" border="1" cellspacing="0" cellpadding="0">
                  <tr>
                    <td>Logo:</td>
                  </tr>
                  <tr>
                    <td width="71%"><div align="center"><a href="#"><img src="<%=rscomp("logourl")%>" width="200" height="200" border="0" style="margin-top:5px; margin-right:10px; margin-bottom:5px" /></a></div></td>
                  </tr>
                  <tr>
                    <td><span class="style18">
                      <input name="file1"  type="file" class="style49" id="file1" />
                      &nbsp;
                      <input type="submit" name="Submit32" value="Update" />
                      <input name="compid" type="text" id="compid" value="<%=rscomp("infoid")%>" size="3"  readonly="1"/>
                    </span></td>
                  </tr>
                </table>
              </form>
              <form id="compinfo" name="compinfo" method="post" action="update_info.asp">
                <table width="100%" border="1" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="30%">Tên công ty:</td>
                    <td width="70%"><input name="compname" type="text" id="compname" value="<%=rscomp("compname")%>" size="35">
                        <input name="compid" type="text" id="compid" value="<%=rscomp("infoid")%>" size="3"  readonly="1"/></td>
                  </tr>
                  <tr>
                    <td>Địa chỉ:</td>
                    <td><input name="compaddress" type="text" id="compaddress" value="<%=rscomp("compaddress")%>" size="35" /></td>
                  </tr>
                  <tr>
                    <td>Điện thoại:</td>
                    <td><input name="compphone" type="text" id="compphone" value="<%=rscomp("compphone")%>" size="35" /></td>
                  </tr>
                  <tr>
                    <td>Fax:</td>
                    <td><input name="compfax" type="text" id="compfax" value="<%=rscomp("compfax")%>" size="35" /></td>
                  </tr>
                  <tr>
                    <td>Biểu ngữ:</td>
                    <td><input name="compslogan" type="text" id="compslogan" value="<%=rscomp("compslogan")%>" size="35" /></td>
                  </tr>
                  <tr>
                    <td>Hộp thư:</td>
                    <td><input name="compemail" type="text" id="compemail" value="<%=rscomp("compemail")%>" size="35" /></td>
                  </tr>
                  <tr>
                    <td>Trang chủ:</td>
                    <td><input name="compwebsite" type="text" id="compwebsite" value="<%=rscomp("compwebsite")%>" size="35" /></td>
                  </tr>
                  <tr>
                    <td>Điều khoản hủy </td>
                    <td><textarea name="Cancellation" cols="30" rows="5" id="Cancellation"><%=rscomp("Cancellation")%></textarea></td>
                  </tr>
                  <tr>
                    <td><input type="submit" name="Submit" value="Submit" /></td>
                    <td><input name="update" type="text" id="update" value="yes" size="3"  readonly="1"/></td>
                  </tr>
                </table>
              </form>
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
