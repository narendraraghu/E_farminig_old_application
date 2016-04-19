<%@page import="java.util.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@page pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=UTF-8"%>
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

<A HREF="./jsps/beforeregistration.jsp"><FONT COLOR="white" SIZE=2 FACE="arial,helvetica"><B>RegisterFarmer</B></FONT></A><BR><br>


<A HREF="./jsps/login.jsp"><FONT COLOR="white" SIZE=2 FACE="arial,helvetica"><B> Login </B></FONT></A><BR><br>

</TD></TR></TABLE>
<%ResourceBundle rb= (ResourceBundle)session.getAttribute("resource");%>
<form action="">
<center><font color="blue" face="verdana" size="4"><%=rb.getString("takelesson")%></font></center> <br>
<center><input type="button" style="color: green" value="<%=rb.getString("submit")%>" onclick="window.location.href='./basiclesson.jsp'"></center><br>
<center><font color="blue" face="verdana" size="4"><%=rb.getString("register")%></font></center><br>
<center><input type="button" style="color: green" value="<%=rb.getString("submit")%>" onclick="window.location.href='./registrationform.jsp'"></center></form><br>
  </body>
</html>
