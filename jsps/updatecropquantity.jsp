<%@ page language="java" import="java.util.*" %>
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
		   <form action="./UpdateCropQuantityAction">
			<table align="center" border="1" bgcolor="#A1B2C3" width="70%" cellpadding="10">
			<% String s=request.getParameter("cname"); %>
				<caption>
					<h3>
						 <%=rb.getString("update")%> <%=request.getParameter("cname") %> <%=rb.getString("available") %> <%=rb.getString("quantity") %> <%=rb.getString("and") %> <%=rb.getString("price") %>
					</h3>
				</caption>
					<tr>	<td>
								<%=rb.getString("available") %> <%=rb.getString("quantity") %>
							</td>
							<td>
								<input type="text" name="avail" value="<%=request.getParameter("avail") %>">
							</td></tr>
							<tr>
							<td>
								<%=rb.getString("price") %>
							</td>
							<td>
								<input type="text" name="price" value="<%=request.getParameter("price") %>">
								<input type="hidden" name="cropid" value="<%=request.getParameter("cid") %>">
							</td>						
						</tr>
						<tr><td></td><td><input type="submit"  value="<%=rb.getString("submit") %>"></td></tr>
</table>
		</form>
		<br />
		<br />
	</body>
</html>
