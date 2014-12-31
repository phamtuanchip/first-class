<% rs.open "select * from QueryShowWeather",conn%>
<marquee behavior="scroll" direction="up" height="144" scrollamount="5" scrolldelay="100" onmouseover="" >
<% while not rs.eof %>
 <table width="13%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="<% =rs("PicUrl") %>" width="144" height="108" /></td>
  </tr>
</table>
<% rs.movenext() %>
<% wend %>
<% rs.close() %>
</marquee>
