<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

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

<span class="preload1"></span> 
<span class="preload2"></span>

<ul id="nav">
	<li class="top"><a href="./jsps/adminhome.jsp" class="top_link"><span>Home</span></a></li>
	
	<li class="top"><a href="#nogo22" id="services" class="top_link"><span class="down">Crops</span></a>
		<ul class="sub">
			<li><a href="./jsps/addcrops.jsp">AddCrops</a></li>
			<li><a href="<%=request.getContextPath()+"/ViewCropAction"%>">ViewCrops</a></li>

		</ul>
	</li>
	<li class="top"><a href="#nogo22" id="services" class="top_link"><span class="down">ComputerProfessionals</span></a>
		<ul class="sub">
			<li><a href="./jsps/computerprofregistrationform.jsp">AddProfessionals</a></li>
			<li><a href="<%=request.getContextPath()+"/ViewProfessionalsAction"%>">ViewProfessionals</a></li>

		</ul>
	</li>
	<li class="top"><a href="#nogo22" id="services" class="top_link"><span class="down">Courses</span></a>
		<ul class="sub">
			<li><a href="./jsps/addcourse.jsp">Add Course</a></li>
			<li><a href="<%=request.getContextPath()+"/ViewCourseAction"%>">View Course</a></li>
			<li><a href="<%=request.getContextPath()+"/ViewScheduleAction"%>">View Schedules</a></li>

		</ul>
	</li>
	<li class="top"><a href="#nogo22" id="services" class="top_link"><span class="down">UserRecords</span></a>
		<ul class="sub">
			<li><a href="<%=request.getContextPath()+"/ViewStateAction?role="+"FARMER"%>">Farmer'sRecord</a></li>
			<li><a href="<%=request.getContextPath()+"/ViewStateAction?role="+"WHOLESALER"%>">WholeSalersRecord</a></li>

		</ul>
	</li>

	<li class="top"><a href="<%=request.getContextPath()+"/LogoutAction"%>" id="privacy" class="top_link"><span>Logout</span></a></li>
</ul>

  </body>
</html>


