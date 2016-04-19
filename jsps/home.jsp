<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'home.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="styles.css">


  </head>
  
  <body bgcolor="fffff" background="./images/bg.gif" BGCOLOR="FFFFFF" TEXT="000000" LINK="blue" VLINK="red" Marginwidth=0 marginheight=0 leftmargin=0 topmargin=0>
  <IMG SRC="./images/top1.jpeg" border=0><br>

<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 >

<TR>
<TD VALIGN=top>
<IMG SRC="./images/spacer.gif" border=0><BR>

<A HREF="./jsps/home.jsp"><FONT COLOR="white" SIZE=2 FACE="arial,helvetica"><B> Home</B></FONT></A><BR><br>

<A HREF="./jsps/wholesalerregistrationform.jsp"><FONT COLOR="white" SIZE=2 FACE="arial,helvetica"><B>RegisterWholeSaler</B></FONT></A><BR><br>

<A HREF="./jsps/login1.jsp"><FONT COLOR="white" SIZE=2 FACE="arial,helvetica"><B> Login </B></FONT></A><BR><br>

</TD></TR></TABLE>
<table align="center">
<thead style="outline: "><font color="#910374" size="4" face="verdana"><pre>Choose Language (Its only  for Farmers)</font></thead>
<tr><td><a href="I18NServlet?language=te&country=IN">Telugu</a></td><td><a href="I18NServlet?language=hi&country=IN">Hindi</a></td><td><a href="I18NServlet?language=en">English</a> </td></tr>
<tr> </tr>
<tr> </tr>
</table>
<center>
     <h2><br><pre><br> 
  
</pre>
</center>
<marquee  direction="left"  hspace="130"  style="padding: 0px; white-space: nowrap;"><img src="./images/f1.jpeg" width="200"></marquee>
<marquee behavior="alternate" hspace="130"  style="overflow: hidden;"><font color="#f747578" size="10" >Indian Farmer's Web site</font></marquee>
<marquee  direction="right" hspace="130" vspace="20" style="padding: 0px; white-space: nowrap;"><img src="./images/products.jpeg" ></marquee>


  </body>
</html>
