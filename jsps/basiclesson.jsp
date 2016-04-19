<%@page import="java.util.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@page pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=UTF-8"%>
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
                           
                           
 <%ResourceBundle rb= (ResourceBundle)session.getAttribute("resource");%>

   
                  <br><br><CENTER><%=rb.getString("login")%>  </CENTER><br>       
    <form action="" method="post" name="frm">
    <table align="center" bgcolor="#FFBE9" cellpadding="12" cellspacing="8" >
    <tr><td><%=rb.getString("userName")%></td><td><input type="text" name="loginid" value=""></td></tr>
    <tr><td><%=rb.getString("password")%></td><td><input type="password" name="password" value=""></td></tr>
    <tr><td><input type="submit"  value="<%=rb.getString("submit")%>"></td><td><input type="reset"  value="<%=rb.getString("clear")%>"></td></tr>
   
    </table>
    <br>
    <center><a href="./jsps/beforeregistration.jsp"><img src="./images/back.jpg" width="50" height="50"></a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     <a href="./jsps/croplesson.jsp"><img src="./images/nex.jpg" width="50" height="50"></a> </center>
    <!-- <center><a href="./jsps/registrationform.jsp">User Register Here</a></center> -->
    </form>
    
    
  </body>
</html>
