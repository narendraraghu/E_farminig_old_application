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
 <form action="" name="formercrop" method="post">
   <table align="center" border="1" bgcolor="" width="50%" cellpadding="">
   <caption><h3> <%=rb.getString("crop")%> <%=rb.getString("price")%> <%=rb.getString("and")%> <%=rb.getString("quantity")%> <%=rb.getString("add")%></caption></br></br>
     <tr bgcolor="" align="center"><i> </i></tr>
     
     <tr>
        <td><%=rb.getString("select")%> <%=rb.getString("crops")%> <%=rb.getString("name")%></td>
        <td> 
				<select name="cname" id="select">
				<c:choose>
				 <c:when test="${requestScope.cropname ne null}">
				   <option value="${requestScope.cropname}">${requestScope.cropname}</option>
				 </c:when>
				 <c:otherwise>
				   <option value="" >--Crops--</option>
				   <c:if test="${not empty trans}">
				<c:forEach var="crop" items="${trans}">
				<option value="${crop.cropid}" >								
				${crop.cropname}
				</option>
				</c:forEach>
				</c:if>
				 </c:otherwise>
				</c:choose>	
				</select>
        </td>
     </tr>
     <tr><td><%=rb.getString("available")%> <%=rb.getString("quantity")%></td><td><input type="text" name="quantity" value="">Kgs.</td></tr>
     <tr><td><%=rb.getString("price")%> / Kg</td><td><input type="text" name="price" value="">Rs</td></tr>
     <tr><td align="center"><input type="reset" name="" value="<%=rb.getString("clear")%>"></td><td align="center"><input type="submit" name="" value="<%=rb.getString("submit")%>"></td></tr>
    </table>
 <br/><br/>
    </form>
    <center><a href="./jsps/basiclesson.jsp"><img src="./images/back.jpg" width="50" height="50"></a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     <a href="./jsps/requestcourse.jsp"><img src="./images/nex.jpg" width="50" height="50"></a> </center>
    
  </body>
</html>


