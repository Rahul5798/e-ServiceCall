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
						<li><a href="worker_index.jsp"><span
									class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;
									Home</a></li>

							<li><a href="pending_s.jsp"><span
									class="fa fa-exclamation-circle" aria-hidden="true"></span>&nbsp;
									Pending Services</a></li>
							<li><a href="complete.jsp"><span
									class="fa fa-check-circle" aria-hidden="true"></span>&nbsp;
									Completed Services</a></li>
							<li><a href="wages.jsp"><span
									class="fa fa-money" aria-hidden="true"></span>&nbsp;
									Wages/service</a></li>
							
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#" aria-expanded="false"> <i
								class="fa fa-user"></i>&nbsp; <label style="color: white;"><%=uname %></label>
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								
								
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