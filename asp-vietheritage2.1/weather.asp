<% rs.open "select * from Weather",conn%>
<marquee behavior="scroll" direction="up" height="144" scrollamount="5" scrolldelay="100" onmouseover="" >
<% while not rs.eof %>
 <table width="13%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="<% =(replace(rs("PicUrl"),"#","")&rs("localtionId")) %>" width="144" height="108"  title="<%=rs("name")%>"/></td>
  </tr>
</table>
<% rs.movenext() %>
<% wend %>
<% rs.close() %>
</marquee>
