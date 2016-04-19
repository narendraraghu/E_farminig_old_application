<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addcourse.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="JavaScript" src="<%=request.getContextPath()+"/js/gen_validatorv31.js"%>" type="text/javascript"></script>
  </head>
  
  <body onload="javascript:disableBackButton()" >
       <jsp:include page="header1.jsp"></jsp:include>
        </br>   
        
         <form action="./AddCourseAction" method="post" name="register" >
           <table align="center" border="1" bgcolor="" width="" cellpadding="10">
             
                  <tr  align="center"><td bgcolor="#adede"></td><td align="left" bgcolor="#adede"><i>Add Course </i></td></tr>
     
       <tr>
        
        <td>Enter Course Name</td><td>
        <input type="text" name="name" value=""></td>
        
        
        
        </tr>
     
    
  <tr>
        <td></td><td><input type="submit" value="Submit"> &nbsp; &nbsp;      <input type="reset" value="Clear"></td>
   </tr> 
    </table>
 <br/><br/>
    </form>
    <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("register");
  
   frmvalidator.addValidation("name","req","Please enter Course name");
   
   </script>
  </body>
</html>
