<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
		   
			<table align="center" border="1" bgcolor="#A1B2C3" width="70%" cellpadding="10">
				<caption>
					<h3>
						<c:out value="${sessionScope.userrole}" />'S DETAILS
					</h3>
				</caption>
				
				<tr><th> Name</th> <th>Email</th> <th>Phone No</th> <th>Photo</th><th>District</th> <th>State</th><th> Delete</th></tr>
				<tr bgcolor="#adede">
					<i></i>
				</tr>
				<br />
				<br />



				<c:if test="${not empty user}">
					<c:forEach var="u" items="${user}">





						<tr>
							
							<td>
								${u.firstName}.${u.lastName}
							</td>
							
							<td>
								${u.email}
							</td>
							
							<td>
								${u.phoneNo}
							</td>
							
							<td>
								<img alt="See Photo Here" id="previewField"
									src="${u.photo}" height="80" width="70" />
							</td>
							
							<td>
								${u.district}
							</td>
							
							<td>
								${u.state}
							</td>
							
								<td align="center"><a href="./DeleteCompProfAction?userid=${u.uid}">Delete</a></td>
							
						</tr>
						
					</c:forEach>
				</c:if>

			</table>
		
		<br />
		<br />
	</body>
</html>
