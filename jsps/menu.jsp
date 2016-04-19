<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="baby_menu/style.css" />
<link rel="stylesheet" type="text/css" href="pro_drop_1/pro_drop_1.css" />

<script src="pro_drop_1/stuHover.js" type="text/javascript"></script>
  </head>
  
  <body>
    <div id="menu">
	<ul id="nav">
		<li  class="top"><a href="#" class="top_link" id="privacy"><span>home</span></a></li>
		<li  class="top"><a href="#" class="top_link" id="privacy"><span>about us</span></a></li>
		<li  class="top"><a href="#" class="top_link" id="privacy"><span>services</span></a></li>
		<li  class="top"><a href="#" class="top_link" id="privacy"><span>solutions</span></a></li>
		<li  class="top"><a href="#" class="top_link" id="privacy"><span>contact us</span></a></li>								
	</ul>
</div>
  </body>
</html>
