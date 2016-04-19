<%@ page language="java" import="java.util.*" %>
<%request.setCharacterEncoding("UTF-8");%>
<%@page pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=UTF-8"%>

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
      <%ResourceBundle rb= (ResourceBundle)session.getAttribute("resource");%>
 <form action="./AddQuantityAction"  name="formercrop" method="post">
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
    <script language="JavaScript" type="text/javascript">
     var frmvalidator = new Validator("formercrop");
    frmvalidator.addValidation("cname","req","Please select Crop "); 
    frmvalidator.addValidation("quantity","req");
   frmvalidator.addValidation("quantity","numeric");
   frmvalidator.addValidation("price","req");
   frmvalidator.addValidation("price","decimal");
 </script>
  </body>
</html>
