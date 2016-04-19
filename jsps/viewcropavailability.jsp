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
						View Crop and Make Order
					</h3>
				</caption>
				
				<tr><th>Crop Name </th> <th> Total Quantity </th><th> Available Quantity</th><th> Price per Kg</th><th>State </th><th> District</th><th> Give Order</th></tr>
				<tr bgcolor="#adede">
				</tr>
				
				<c:if test="${not empty trans}">
					<c:forEach var="crop" items="${trans}">
						<tr>
							
							<td>
								${crop.cropname}
							</td>
							<td>
								${crop.quantity}
							</td>
							<td>
								${crop.availquantity}
							</td>
							<td>
								${crop.price}
							</td>
							<td>
								${requestScope.state}
							</td>
							<td>
								${requestScope.dist}
							</td>
							
							
							    <td align="center"><a href="./jsps/wholesalerorder.jsp?cropid=${crop.cropid}&userid=${crop.userid}&avail=${crop.availquantity}&cropname=${crop.cropname}&price=${crop.price}">Order</a></td>
						</tr>
						
					</c:forEach>
				</c:if>

			</table>
		
		<br />
		<br />
	</body>
</html>
