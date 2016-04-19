<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

  <head>
  
<script language="JavaScript" src="<%=request.getContextPath()+"/js/gen_validatorv31.js"%>" type="text/javascript"></script>
  
  <script type = "text/javascript" >
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>


</head>
  
  <body onload="javascript:disableBackButton()">
     <jsp:include page="header1.jsp"></jsp:include> <br/>   
 <form action=""  name="budget">
   <table align="center" border="1" bgcolor="#456987" width="70%" cellpadding="10">
   <caption></caption>
     <tr bgcolor="#adede" align="center"><i> </i></tr>
     
     <tr>
        <td>Selected State</td>
        <td> 
				<select select name="dname" id="select" >
				<c:choose>
				 <c:when test="${requestScope.statename ne null}">
				   <option value="${requestScope.statename}">${requestScope.statename}</option>
				 </c:when>
				 <c:otherwise>
				   <option value="" >--States--</option>
				   <c:if test="${not empty deptart}">
				<c:forEach var="depart" items="${deptart}">
				<option value="${depart.state}" >								
				${depart.state}
				</option>
				</c:forEach>
				</c:if>
				 </c:otherwise>
				</c:choose>	
							
			
				</select>
        </td>
     </tr>
     <tr><td>District Name</td><td> 
				<select name="dname1" id="select" onchange="javascript:if(document.budget.dname1.value==''){alert('Select Any Department');}  {var statename=document.getElementById('dname').value;var dist=document.getElementById('dname1').value;location.href='./ViewUserRecordAction?distname='+dist+'&statename='+statename}">
				<c:choose>
				 <c:when test="${requestScope.district ne null}">
				   <option value="${requestScope.district}">${requestScope.district}</option>
				 </c:when>
				 <c:otherwise>
				   <option value="">--SELECT--</option>
				   <c:if test="${not empty deptart}">
				<c:forEach var="depart" items="${deptart}">
				<option value="${depart.district}">								
				${depart.district}
				</option>
				</c:forEach>
				</c:if>
				 </c:otherwise>
				</c:choose>	
							
			
				</select>
				</td></tr>
    </table>
 <br/><br/>
    </form>
  </body>
</html>
