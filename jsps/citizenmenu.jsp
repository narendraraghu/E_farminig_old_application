<%@ page language="java" import="java.util.*" %>

<%request.setCharacterEncoding("UTF-8");%>
<%@page pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'citizenmenu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="pro_drop_1/pro_drop_1.css" />

<script src="pro_drop_1/stuHover.js" type="text/javascript"></script>
  </head>
  
  <body>
  <h1></h1>
<h2></h2>
<h3></h3>
<%ResourceBundle rb= (ResourceBundle)session.getAttribute("resource");%>
<span class="preload1"></span> 
<span class="preload2"></span>

<ul id="nav">
	<li class="top"><a href="./jsps/farmerhome.jsp" class="top_link"><span><font size="2"><%=rb.getString("home")%></font></span></a></li>
	
	<li class="top"><a href="#nogo22" id="services" class="top_link"><span class="down"><font size="2"><%=rb.getString("course")%></font></span></a>
		<ul class="sub">
			<li><a href="<%=request.getContextPath()+"/CourseDetailsAction"%>"><font size="2"><%=rb.getString("courserequest")%></font></a></li>
			<li><a href="<%=request.getContextPath()+"/ViewScheduleOfFarmer"%>"><font size="2"><%=rb.getString("viewschedule")%></font></a></li>

		</ul>
	</li>
	
	<li class="top"><a href="#nogo22" id="services" class="top_link"><span class="down"><font size="2"><%=rb.getString("crops")%></font></span></a>
		<ul class="sub">
			<li><a href="<%=request.getContextPath()+"/FarmerCropAction"%>"><font size="2"><%=rb.getString("addcrops")%></font></a></li>
			<li><a href="<%=request.getContextPath()+"/ViewCropPriceAction"%>"><font size="2"><%=rb.getString("viewcrops")%></font></a></li>

		</ul>
	</li>
	
	<li class="top"><a href="<%=request.getContextPath()+"/ViewSalesDetailsAction"%>" id="privacy" class="top_link"><span><font size="2"><%=rb.getString("salesdetails")%></font></span></a></li>
	

	<li class="top"><a href="<%=request.getContextPath()+"/LogoutAction"%>" id="privacy" class="top_link"><span><font size="2"><%=rb.getString("logout")%></font></span></a></li>
</ul>

  </body>
</html>


