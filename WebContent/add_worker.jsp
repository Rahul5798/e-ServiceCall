<%@page import="servlets.signup"%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="admin_nav.jsp"%>

<%!signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");
%>
<div class="container">
<ol class="breadcrumb">
		<li><a href="admin_index.jsp">Home</a></li>
		<li class="active">Add Worker</li>
	</ol>
<div class="row">
<form method="post" name="frm" action="http://localhost:8080/EServiceCal/addworker">

			<div class="form-group">
				<label for="exampleInputName2">Worker Id</label> <input
					type="text" name="id" class="form-control" 
					>
			</div>
			<div class="form-group">
				<label for="exampleInputName2">Worker Name</label> <input
					type="text" name="name" class="form-control" >
			</div>
			<div class="form-group">
				<label for="exampleInputName2">Worker Contact</label> <input
					type="text" name="contact" class="form-control">
			</div>
			<div class="form-group">
					<label>Select Profession</label> <select class="form-control"
						name="profession">
						
						<option>plumber</option>
						<option>electrician</option>
						<option>carpenter</option>
						<option>AC Services</option>
						<option>Refrigerator Services</option>
						<option>Washing Machine Services</option>
						<option>Gyser Services</option>
						<option>RO Services</option>
						<option>TV Services</option>
						<option>General Automobile Services</option>
						<option>Car Maintainance Services</option>
						<option>Bike Maintainance Services</option>
						<option>Painting</option>
						
					</select>
			</div>
			<div class="form-group">
				<label for="exampleInputName2">Age</label> <input
					type="text" name="age" class="form-control">
			</div>
			<div class="form-group">
					<label>Select City</label> <select class="form-control"
						name="city">
						
						<option>Ahmedabad</option>
						
						
						
						
					</select>
			</div>
			<div class="form-group">
					<label>Select Area</label> <select class="form-control"
						name="area">
						
						<option>Vatva</option>
						<option>Bapu nagar</option>
						<option>Vastral</option>
						<option>Geeta mandir</option>
						
						
						
					</select>
			</div>
			<div class="form-group">
				<label for="exampleInputName2">Address</label> <input
					type="text" name="address" class="form-control">
			</div>
			<div class="form-group">
					<input type="submit" name="submit" value="add worker"
						class="btn btn-primary" >
				</div>
			
				
</form>
</div>
</div>
<%@ include file="admin_footer.jsp"%>