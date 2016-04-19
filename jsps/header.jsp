<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="ffffff" background="./images/bg.gif" BGCOLOR="FFFFFF" TEXT="000000" LINK="blue" VLINK="red" Marginwidth=0 marginheight=0 leftmargin=0 topmargin=0>
  <IMG SRC="./images/top1.jpeg" border=0 width="900"><br><br>
 
  
         <TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 >

<TR>
<TD VALIGN=top>
<IMG SRC="./images/spacer.gif" border=0><BR>


	
</TD>
<td>

               <c:choose>
   				<c:when test="${sessionScope.role eq 'ADMIN'}">
   				<jsp:include page="./adminmenu.jsp"/>
   				</c:when>
   		        
   				
   				<c:when test="${sessionScope.role eq 'FARMER'}">
   				<jsp:include page="./citizenmenu.jsp"/>
   				</c:when>
   				
			    			
				
   				<c:when test="${sessionScope.role eq 'WHOLESALER'}">
   				<jsp:include page="./wholesalesmenu.jsp"/>
   				</c:when>
   				
   				<c:when test="${sessionScope.role eq 'ComputerProfessional'}">
   				<jsp:include page="./computerproffmenu.jsp"/>
   				</c:when>
   
								<c:otherwise>
						<jsp:include page="./login.jsp"/>
					</c:otherwise>
					</c:choose>
   				
</td></TR></TABLE>	

   <br/><br/>
		
		 <center>
   <font color="red"><b>
		 <c:if test="${requestScope.status!='null'}">
					 
                          <c:out value="${requestScope.status}"></c:out> 
                          </c:if>
                          </b>
                          </font>
                         
                           </center>
		
  </body>
</html>
