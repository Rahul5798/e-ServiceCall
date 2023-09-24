<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>eService</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="animate.css" rel="stylesheet" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
</head>
<body>

	<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

	<%String uname; %>
	<%
	if(session!=null)
	{
	if(session.getAttribute("abc")!=null)
		{
			uname=session.getAttribute("abc").toString();
%>
	<nav class="navbar navbar-inverse navbar-static-top"
		style="background-color: #203547;margin:0px;color: black;"
		role="navigation">
	<div class="container">
		<div class="row">

			<div class="col-lg-4">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-ese-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<img class="navbar-brand img-responsive animated bounceInRight"
						src="img/logo.jpg">
				</div>
			</div>
			<div class="col-lg-2"></div>
			<div class="col-lg-6">
				<div class="collapse navbar-collapse navbar-right"
					id="bs-ese-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index1.jsp"><span
									class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;
									Home</a></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false"><span
									class="glyphicon 	glyphicon-list" aria-hidden="true"></span>&nbsp;
									Services<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="applins.jsp"><i class="fa fa-television"></i>&nbsp;Appliances
											Service</a></li>
									<li><a href="autos.jsp"><i class="fa fa-car"></i>&nbsp;Automobile
											Service</a></li>
									<li><a href="paints.jsp"><i class="fa fa-paint-brush"></i>&nbsp;Painting
											Service</a></li>
									<li><a href="plumbs.jsp"><i class="fa fa-wrench"></i>&nbsp;Plumbing
											Service</a></li>
									<li><a href="cars.jsp"><i class="fa fa-legal"></i>&nbsp;Carpenter
									</a></li>
									<li><a href="elecs.jsp"><i class="fa fa-plug"></i>&nbsp;Electrical
											Service</a></li>
								</ul></li>
							<li><a href="about1.jsp"><span
									class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>&nbsp;
									About us</a></li>
							<li><a href="contact1.jsp"><span
									class="glyphicon glyphicon-envelope" aria-hidden="true"></span>&nbsp;
									Contact</a></li>
							
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#" aria-expanded="false"> <i
								class="fa fa-user"></i>&nbsp; <label style="color: white;"><%=uname %></label>
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="userinfo.jsp"><i class="fa fa-male"></i>&nbsp;&nbsp;
										Your Account</a></li>
								<li><a href="edituser.jsp"><i class="fa fa-cog"></i>&nbsp;&nbsp;
										Update Account</a></li>
								<li><a href="myorders.jsp"><i class="fa fa-shopping-cart"></i>&nbsp;&nbsp;
										My Orders</a></li>
								<li class="divider"></li>
								<li><a href="logout.jsp"><i class="fa fa-sign-out"></i>&nbsp;Logout</a>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</nav>
	<%
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>