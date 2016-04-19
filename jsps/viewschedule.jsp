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
	 <%ResourceBundle rb= (ResourceBundle)session.getAttribute("resource");%>
		<jsp:include page="header1.jsp"></jsp:include>
		<br />
		
			<table align="center" border="1" bgcolor="#A1B2C3" width="60%"
				cellpadding="">
				<caption>
					<h3>
						 <%=rb.getString("course")%> <%=rb.getString("schedule")%>
					</h3>
				</caption>
				<tr bgcolor="#adede">
					<i></i>
				</tr>
				<tr><th bgcolor="#cp987"><%=rb.getString("course")%> <%=rb.getString("name")%></th><th bgcolor="#cp987"><%=rb.getString("scheduleddate")%></th><th bgcolor="#cp987"><%=rb.getString("time")%></th><th bgcolor="#cp987"><%=rb.getString("place")%></th><th bgcolor="#cp987"><%=rb.getString("facultyname")%></th></tr><br><br>
				<c:if test="${not empty courses}">
					<c:forEach var="course" items="${courses}">
						<tr>
							<td align="center">
								${course.coursename}
							</td>
							<td align="center">
								${course.date}
							</td>
							<td align="center">
								${course.time}
							</td>
							<td align="center">
								${course.area}
							</td>
							<td align="center">
								${course.username}
							</td>
						</tr>
					</c:forEach>
				</c:if>

			</table>
	</body>
</html>
