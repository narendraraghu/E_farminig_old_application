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
  
  <body bgcolor="ffffff" background="./images/bg.gif"  TEXT="000000" LINK="blue" VLINK="red" Marginwidth=0 marginheight=0 leftmargin=0 topmargin=0>
  <IMG SRC="./images/top.gif" border=0><br>
<marquee behavior="slide" direction="left" hspace="130" vspace="30" style="padding: 0px; white-space: nowrap;"><img src="./images/f1.jpeg" width="200"></marquee>
<marquee behavior="alternate" hspace="130" vspace="20" style="overflow: hidden;"><font color="#f747578" size="10" >Indian Former's Web site</font></marquee>
<marquee behavior="slide" direction="right" hspace="130" vspace="20" style="padding: 0px; white-space: nowrap;"><img src="./images/products.jpeg" ></marquee>
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 >

<TR>
<TD VALIGN=top>
<IMG SRC="./images/spacer.gif" border=0><BR>

<A HREF="./jsps/home.jsp"><FONT COLOR="white" SIZE=2 FACE="arial,helvetica"><B> Home</B></FONT></A><BR><br>

<A HREF=""><FONT COLOR="white" SIZE=2 FACE="arial,helvetica"><B>How do Register</B></FONT></A><BR><br>

<A HREF=""><FONT COLOR="white" SIZE=2 FACE="arial,helvetica"><B>How do Sales</B></FONT></A><BR><br>

<A HREF=""><FONT COLOR="white" SIZE=2 FACE="arial,helvetica"><B> Login </B></FONT></A><BR><br>
</TD></TR>
</TABLE>
 </body>
</html>
