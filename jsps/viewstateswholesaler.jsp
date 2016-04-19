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
 <form action=""  name="states">
   <table align="center" border="1" bgcolor="" width="70%" cellpadding="10">
   <caption></caption>
     <tr  align="center"><td bgcolor="#adede"></td><td bgcolor="#adede" align="center"><i>States</i></td></tr>
     
     <tr>
        <td>Select State</td>
        <td align="center"> 
				<select select name="dname" id="select" onchange="javascript:if(document.states.dname.value==''){alert('Select Any Department');}  {location.href='./ViewDistrictforWholesalerAction?statename='+document.states.dname.value;}">
				<c:choose>
				 <c:when test="${requestScope.statename ne null}">
				   <option value="${requestScope.statename}">${requestScope.statename}</option>
				 </c:when>
				 <c:otherwise>
				   <option value="" >--LIST OF STATES--</option>
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
     
    
  
    </table>
 <br/><br/>
    </form>
    
     
  </body>
</html>
