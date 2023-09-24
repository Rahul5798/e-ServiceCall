<%@page import="servlets.signup"%>
<%@ page import="model.BookingModel"%>
<%@ page import="model.BookingBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="navbar1.jsp"%>
<%!signup st=new signup(); %>
	<%
		st=(signup)session.getAttribute("user");
	%>
	<ol class="breadcrumb">
		<li><a href="index1.jsp">Home</a></li>
		<li class="active">Profile Information</li>
	</ol>
<div class="container" class="center">
	
	
	<div class="col md-3">
		
		
		<h1 style="text-align: center">Profile Information</h1>
	
	
	
			<br>
	<div class="col md-3"></div>
	<div class="col md-3">
	<form method="post">
			<table class="table table-hover">
				<tr>
					<td>Name</td>
					<td><%=st.name%></td>
				</tr>
				<tr>
					<td>User Name</td>
					<td><%=st.userid %></td>
				</tr>
				<tr>
					<td>Email ID</td>
					<td><%=st.email%></td>
				</tr>
				
				<tr>
					<td>Address</td>
					<td><%=st.address%></td>
				</tr>
				<tr>
				<tr>
					<td>Phone Number</td>
					<td><%=st.contact%></td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</div>
<br>
<br>

<%@ include file="footer1.jsp"%>
	
