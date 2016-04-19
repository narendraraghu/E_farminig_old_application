<%@page import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="JavaScript" src="<%=request.getContextPath()+"/js/gen_validatorv31.js"%>" type="text/javascript"></script>
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

</TD></TR>
    </table>
		 <center>
   <font color="red"><b>
    
		 <c:if test="${requestScope.status!='null'}">
					 
                          <c:out value="${requestScope.status}"></c:out> 
                          </c:if>
                          </b>
                          </font>
                         
                           </center>
                           
                           



                           
    <form action="./LoginAction" method="post" name="frm">
    <table align="center" bgcolor="#FFBE9" cellpadding="12" cellspacing="8" >
    <tr><td>UserName</td><td><input type="text" name="loginid" value=""></td></tr>
    <tr><td>Password</td><td><input type="password" name="password" value=""></td></tr>
    <tr><td><input type="submit"  value="Submit"></td><td><input type="reset"  value="Clear"></td></tr>
   
    </table>
    <br>
    <center><a href="./jsps/recoverpassword.jsp">Recovery Password</a></center><br>
    
    </form>
    <script language="JavaScript" type="text/javascript">
  var frmvalidator  = new Validator("frm");

        frmvalidator.addValidation("loginid","req","Loginname is required");
    frmvalidator.addValidation("password","req","Password is required");
    
     </script>
    
  </body>
</html>
