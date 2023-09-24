<%@page import="model.BookingBean"%>
<%@page import="model.BookingModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="navbar1.jsp"%>

<div class="container">
	<ol class="breadcrumb">
		<li><a href="index2.jsp">Home</a></li>
		<li class="active">Order Review</li>
	</ol>

	<div class="cen"
		style="color: #1D68A7; border-color: #1D68A7; padding: 10px;">
		<i class="fa fa-check-square-o fa-4x"></i><br>
		<h4>Your order is placed successfully.........</h4>
	</div>
	
	<div class="form-group cen">
		<a class="btn btn-success" href="index1.jsp" id="myButton"
			name="submit">Continue</a> <a class="btn btn-success"
			href="logout.jsp" id="myButton" name="submit">Logout</a>
	</div>
</div>
<%@ include file="footer1.jsp"%>