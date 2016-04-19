<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addcrops.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <script language="JavaScript" src="<%=request.getContextPath()+"/js/gen_validatorv31.js"%>" type="text/javascript"></script>
  <script language="JavaScript" type="text/javascript"
		src="<%=request.getContextPath()+"/js/ts_picker.js"%>"></script>
   <script type="text/javascript" src="js/image.js"> </script>
  </head>
  <body background="./images/products.jpeg">
       <jsp:include page="header1.jsp"></jsp:include> 
       <br/>   
       
         <form action="./AddCropAction" method="post" name="register" onSubmit="return validate()" enctype="multipart/form-data">
           <table align="center" border="1" bgcolor="#456987" width="60%" cellpadding="10">
             
                  <tr  align="center"><td></td><td align="left" bgcolor="#adede"><i>Add Crop </i></td></tr>
     
       <tr>
        
        <td>Enter Crop Name</td><td>
        <input type="text" name="name" value=""></td>
        
        <td> <table align="center"> <tr><td border="0" align="left" rowspan="5" colspan='2'>


						<img alt="See Photo Here" id="previewField" src="images/crops.jpeg"
							height="150" width="120" />

					</td></tr></table></td>
        
        </tr>
     
    <tr>
    <td><span class=Title>    Browse Photo</span></td>
    <td><input type="file" name="photo" class="textfield" onChange="preview(this)" /></td>
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
  
   frmvalidator.addValidation("name","req","Please enter Crop name");
   frmvalidator.addValidation("photo","req","Please Broswe image");
   
   </script>
     </body>
</html>
