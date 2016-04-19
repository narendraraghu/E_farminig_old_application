<%@ page language="java" import="java.util.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@page pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'viewdeptbudget.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


		<script language="JavaScript"
			src="<%=request.getContextPath()
							+ "/js/gen_validatorv31.js"%>type="text/javascript"></script>
		<script language="JavaScript" type="text/javascript"
			src="/js/ts_picker.js"></script>
		<script language="JavaScript1.1" src="/js/pass.js">


</script>
		<script type="text/javascript" src="js/image.js"> </script>
		<script type="text/javascript" src="js/general.js"> </script>
		<script type="text/javascript" src="js/adi.js"> </script>
		<script type="text/javascript" src="js/form_validation.js"> </script>
		<script language="JavaScript" src="js/javascripts.js"></script>
		<script language="JavaScript" src="js/pop-closeup.js"></script>



		<script language="JavaScript"
			src="<%=request.getContextPath()
							+ "/js/gen_validatorv31.js"%>"
			type="text/javascript"></script>
		<script language="JavaScript" type="text/javascript"
			src="<%=request.getContextPath() + "/js/ts_picker.js"%>"></script>
		<script>
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>


	</head>
	<body onload="javascript:disableBackButton()">
		<jsp:include page="header1.jsp"></jsp:include>
		<br />
		<%ResourceBundle rb= (ResourceBundle)session.getAttribute("resource");%>
		   <form action="./CourseEnrollAction" name="frm" method="post">
			<table align="center" border="1" bgcolor="" width="60%" cellpadding="10">
				<caption>
					<h3>
						<%=rb.getString("courserequest")%>
					</h3>
				</caption>
					<c:if test="${not empty farmer}">
					<c:forEach var="u" items="${farmer}">
                      <tr>
                      <td> <%=rb.getString("name")%></td>
							<td>
								${u.username} . ${u.lastname}
							</td>	
						</tr>
						
						<tr>
						<td><%=rb.getString("selectcourse")%></td>
							<td>
				<select name="dname1" id="select" >
				<c:choose>
				 <c:when test="${requestScope.district ne null}">
				   <option value="${requestScope.district}">${requestScope.district}</option>
				 </c:when>
				 <c:otherwise>
				   <option value="">--SELECT--</option>
				   <c:if test="${not empty courses}">
				<c:forEach var="c" items="${courses}">
				<option value="${c.coursename}">								
				${c.coursename}
				</option>
			
				</c:forEach>
				</c:if>
				 </c:otherwise>
				</c:choose>	
							
			
				</select>
							</td>	
						</tr>
						
						<tr><td><%=rb.getString("area")%></td><td>${u.area} </td></tr>
						<tr><td><%=rb.getString("city")%></td><td>${u.city} </td></tr>
						<tr><td><%=rb.getString("district")%></td><td>${u.district}</td></tr>
						
					</c:forEach>
				</c:if>
				
				<c:if test="${not empty courses}">
				<c:forEach var="c1" items="${courses}">
				<input type="hidden" name="courseid" value="${c1.courseid}">
				</c:forEach>
				</c:if>
				
                    <tr><td></td><td align="left"><input type="submit"  value="<%=rb.getString("submit")%>"></td></tr>
			</table>
		</form>
		<br />
		<br />
	</body>
</html>
