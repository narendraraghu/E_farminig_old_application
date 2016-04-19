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
		   <form action="./CourseScheduleAction" name="frm" method="post">
			<table align="center" border="1" bgcolor="" width="60%" cellpadding="10">
				<caption>
					<h3>
						Course Classes Scheduling
					</h3>
				</caption>
					
						<tr>
						<td>Select Course</td>
							<td>
				<select name="course" id="select" >
				<c:choose>
				 <c:when test="${requestScope.course ne null}">
				   <option value="${requestScope.course}">${requestScope.course}</option>
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
									
				 <tr><td>Schedule Date</td><td>
   <input type="text" name="date" value=""  readonly="readonly" /><a href="javascript:show_calendar('document.frm.date', document.frm.date.value);"> <img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18" border="0"/></a>    </td>
 </tr>
				 <tr><td>Schedule Time</td><td align="left"><input type="text" name="time" value=""></td></tr>
				 <tr><td>Place</td><td align="left"><input  type="text" name="place" value=""></td></tr>
				 <tr><td></td><td align="left"><input type="submit"  value="Submit"></td></tr>
			</table>
		</form>
		<script language="JavaScript" type="text/javascript">
  var frmvalidator  = new Validator("frm");
  
  frmvalidator.addValidation("course","req","Please Select Course first");
   frmvalidator.addValidation("date","req","Please enter Date for Schedule");
  frmvalidator.addValidation("time","req","Please enter Time ");
  frmvalidator.addValidation("place","req","Please enter your Last Name");
 </script>
		<br />
		<br />
	</body>
</html>
